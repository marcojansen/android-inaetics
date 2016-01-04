/**
 *Licensed to the Apache Software Foundation (ASF) under one
 *or more contributor license agreements.  See the NOTICE file
 *distributed with this work for additional information
 *regarding copyright ownership.  The ASF licenses this file
 *to you under the Apache License, Version 2.0 (the
 *"License"); you may not use this file except in compliance
 *with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *Unless required by applicable law or agreed to in writing,
 *software distributed under the License is distributed on an
 *"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 *specific language governing permissions and limitations
 *under the License.
 */
/*
 * service_registration.c
 *
 *  \date       Aug 6, 2010
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

#include "service_registration_private.h"
#include "constants.h"

static celix_status_t serviceRegistration_initializeProperties(service_registration_pt registration, properties_pt properties);
static celix_status_t serviceRegistration_createInternal(registry_callback_t callback, bundle_pt bundle, char * serviceName, long serviceId,
        void * serviceObject, properties_pt dictionary, bool isFactory, service_registration_pt *registration);
static celix_status_t serviceRegistration_destroy(service_registration_pt registration);

service_registration_pt serviceRegistration_create(registry_callback_t callback, bundle_pt bundle, char * serviceName, long serviceId, void * serviceObject, properties_pt dictionary) {
    service_registration_pt registration = NULL;
	serviceRegistration_createInternal(callback, bundle, serviceName, serviceId, serviceObject, dictionary, false, &registration);
	return registration;
}

service_registration_pt serviceRegistration_createServiceFactory(registry_callback_t callback, bundle_pt bundle, char * serviceName, long serviceId, void * serviceObject, properties_pt dictionary) {
    service_registration_pt registration = NULL;
    serviceRegistration_createInternal(callback, bundle, serviceName, serviceId, serviceObject, dictionary, true, &registration);
    return registration;
}

static celix_status_t serviceRegistration_createInternal(registry_callback_t callback, bundle_pt bundle, char * serviceName, long serviceId,
        void * serviceObject, properties_pt dictionary, bool isFactory, service_registration_pt *out) {
    celix_status_t status = CELIX_SUCCESS;

	service_registration_pt  reg = calloc(1, sizeof(*reg));
    if (reg) {
        reg->callback = callback;
        reg->services = NULL;
        reg->nrOfServices = 0;
		reg->isServiceFactory = isFactory;
		reg->className = strdup(serviceName);
		reg->bundle = bundle;
		reg->refCount = 1;

		reg->serviceId = serviceId;
		reg->svcObj = serviceObject;
		if (isFactory) {
			reg->serviceFactory = (service_factory_pt) reg->svcObj;
		} else {
			reg->serviceFactory = NULL;
		}

		reg->isUnregistering = false;
        celixThreadRwlock_create(&reg->lock, NULL);

		serviceRegistration_initializeProperties(reg, dictionary);
    } else {
    	status = CELIX_ENOMEM;
    }

	if (status == CELIX_SUCCESS) {
		*out = reg;
	}

	return status;
}

void serviceRegistration_retain(service_registration_pt registration) {
	celixThreadRwlock_writeLock(&registration->lock);
	registration->refCount += 1;
    celixThreadRwlock_unlock(&registration->lock);
}

void serviceRegistration_release(service_registration_pt registration) {
    celixThreadRwlock_writeLock(&registration->lock);
    assert(registration->refCount > 0);
	registration->refCount -= 1;
	if (registration->refCount == 0) {
		serviceRegistration_destroy(registration);
	} else {
        celixThreadRwlock_unlock(&registration->lock);
	}
}

static celix_status_t serviceRegistration_destroy(service_registration_pt registration) {
	//fw_log(logger, OSGI_FRAMEWORK_LOG_DEBUG, "Destroying service registration %p\n", registration);
    free(registration->className);
	registration->className = NULL;

    registration->callback.unregister = NULL;

	properties_destroy(registration->properties);
	celixThreadRwlock_unlock(&registration->lock);
    celixThreadRwlock_destroy(&registration->lock);
	free(registration);

	return CELIX_SUCCESS;
}

static celix_status_t serviceRegistration_initializeProperties(service_registration_pt registration, properties_pt dictionary) {
    char sId[32];

	if (dictionary == NULL) {
		dictionary = properties_create();
	}


	snprintf(sId, 32, "%ld", registration->serviceId);
	properties_set(dictionary, (char *) OSGI_FRAMEWORK_SERVICE_ID, sId);

	if (properties_get(dictionary, (char *) OSGI_FRAMEWORK_OBJECTCLASS) == NULL) {
		properties_set(dictionary, (char *) OSGI_FRAMEWORK_OBJECTCLASS, registration->className);
	}


    celixThreadRwlock_writeLock(&registration->lock);
    registration->properties = dictionary;
    celixThreadRwlock_unlock(&registration->lock);


    return CELIX_SUCCESS;
}

void serviceRegistration_invalidate(service_registration_pt registration) {
    celixThreadRwlock_writeLock(&registration->lock);
    registration->svcObj = NULL;
    celixThreadRwlock_unlock(&registration->lock);
}

bool serviceRegistration_isValid(service_registration_pt registration) {
    bool isValid;
    if (registration != NULL) {
        celixThreadRwlock_readLock(&registration->lock);
        isValid = registration->svcObj != NULL;
        celixThreadRwlock_unlock(&registration->lock);
    } else {
        isValid = false;
    }
    return isValid;
}

celix_status_t serviceRegistration_unregister(service_registration_pt registration) {
	celix_status_t status = CELIX_SUCCESS;

    bool notValidOrUnregistering;
    celixThreadRwlock_readLock(&registration->lock);
    notValidOrUnregistering = !serviceRegistration_isValid(registration) || registration->isUnregistering;
    celixThreadRwlock_unlock(&registration->lock);

    registry_callback_t callback;
    callback.unregister = NULL;
    bundle_pt bundle = NULL;

    if (notValidOrUnregistering) {
		printf("Service is already unregistered\n");
		status = CELIX_ILLEGAL_STATE;
	} else {
        celixThreadRwlock_writeLock(&registration->lock);
        registration->isUnregistering = true;
        bundle = registration->bundle;
        callback = registration->callback;
        celixThreadRwlock_unlock(&registration->lock);
    }

	if (status == CELIX_SUCCESS && callback.unregister != NULL) {
        callback.unregister(callback.handle, bundle, registration);
	}

	framework_logIfError(logger, status, NULL, "Cannot unregister service registration");

	return status;
}

celix_status_t serviceRegistration_getService(service_registration_pt registration, bundle_pt bundle, void **service) {
	int status = CELIX_SUCCESS;
    celixThreadRwlock_readLock(&registration->lock);
    if (registration->isServiceFactory) {
        service_factory_pt factory = registration->serviceFactory;
        status = factory->getService(factory->factory, bundle, registration, service);
    } else {
        (*service) = registration->svcObj;
    }
    celixThreadRwlock_unlock(&registration->lock);
    return status;
}

celix_status_t serviceRegistration_ungetService(service_registration_pt registration, bundle_pt bundle, void **service) {
    celixThreadRwlock_readLock(&registration->lock);
    if (registration->isServiceFactory) {
        service_factory_pt factory = registration->serviceFactory;
        factory->ungetService(factory->factory, bundle, registration, service);
    }
    celixThreadRwlock_unlock(&registration->lock);
    return CELIX_SUCCESS;
}

celix_status_t serviceRegistration_getProperties(service_registration_pt registration, properties_pt *properties) {
	celix_status_t status = CELIX_SUCCESS;

    if (registration != NULL && *properties == NULL) {
        celixThreadRwlock_readLock(&registration->lock);
        *properties = registration->properties;
        celixThreadRwlock_unlock(&registration->lock);
	} else {
		status = CELIX_ILLEGAL_ARGUMENT;
	}

    framework_logIfError(logger, status, NULL, "Cannot get registration properties");

	return status;
}

celix_status_t serviceRegistration_setProperties(service_registration_pt registration, properties_pt properties) {
    celix_status_t status;

    properties_pt oldProperties = NULL;
    registry_callback_t callback;

    celixThreadRwlock_writeLock(&registration->lock);
    oldProperties = registration->properties;
    status = serviceRegistration_initializeProperties(registration, properties);
    callback = registration->callback;
    celixThreadRwlock_unlock(&registration->lock);

    if (status == CELIX_SUCCESS && callback.modified != NULL) {
        callback.modified(callback.handle, registration, oldProperties);
    }

	return status;
}


celix_status_t serviceRegistration_getBundle(service_registration_pt registration, bundle_pt *bundle) {
	celix_status_t status = CELIX_SUCCESS;

    if (registration != NULL && *bundle == NULL) {
        celixThreadRwlock_readLock(&registration->lock);
        *bundle = registration->bundle;
        celixThreadRwlock_unlock(&registration->lock);
	} else {
		status = CELIX_ILLEGAL_ARGUMENT;
	}

    framework_logIfError(logger, status, NULL, "Cannot get bundle");

	return status;
}

celix_status_t serviceRegistration_getServiceName(service_registration_pt registration, char **serviceName) {
	celix_status_t status = CELIX_SUCCESS;

    if (registration != NULL && *serviceName == NULL) {
        celixThreadRwlock_readLock(&registration->lock);
        *serviceName = registration->className;
        celixThreadRwlock_unlock(&registration->lock);
	} else {
        status = CELIX_ILLEGAL_ARGUMENT;
    }


    framework_logIfError(logger, status, NULL, "Cannot get service name");

	return status;
}
