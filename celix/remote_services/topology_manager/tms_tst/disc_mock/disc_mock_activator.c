/*
 * Licensed under Apache License v2. See LICENSE for more information.
 */
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <service_tracker_customizer.h>
#include <service_tracker.h>

#include "bundle_activator.h"
#include "bundle_context.h"
#include "service_registration.h"
#include "service_reference.h"
#include "celix_errno.h"

#include "disc_mock_service.h"
#include "discovery.h"
#include "constants.h"
#include "remote_constants.h"

celix_status_t discovery_endpointAdded(void *handle, endpoint_description_pt endpoint, char *matchedFilter);
celix_status_t discovery_endpointRemoved(void *handle, endpoint_description_pt endpoint, char *matchedFilter);

celix_status_t bundleActivator_create(bundle_context_pt context, void **out) {
    celix_status_t status = CELIX_SUCCESS;
    struct disc_mock_activator *act = calloc(1, sizeof(*act));
    if (act != NULL) {
        act->context = context;
        discMockService_create(act, &act->serv);
        act->endpointListener = NULL;
        act->endpointListenerService = NULL;
        status = arrayList_create(&act->endpointList);
    } else {
        status = CELIX_ENOMEM;
    }

    if (status == CELIX_SUCCESS) {
        *out = act;
    } else if (act != NULL) {
        free(act);
    }

    return CELIX_SUCCESS;
}

celix_status_t bundleActivator_start(void * userData, bundle_context_pt context) {
    celix_status_t status;
    struct disc_mock_activator * act = userData;
    char *uuid = NULL;

    act->reg = NULL;
    status = bundleContext_registerService(context, (char *) DISC_MOCK_SERVICE_NAME, act->serv, NULL, &act->reg);

    bundleContext_getProperty(context, OSGI_FRAMEWORK_FRAMEWORK_UUID, &uuid);

    if (!uuid) {
        return CELIX_ILLEGAL_STATE;
    }

    size_t len = 11 + strlen(OSGI_FRAMEWORK_OBJECTCLASS) + strlen(OSGI_RSA_ENDPOINT_FRAMEWORK_UUID) + strlen(uuid);
    char *scope = malloc(len + 1);
    if (!scope) {
        return CELIX_ENOMEM;
    }

    sprintf(scope, "(&(%s=*)(%s=%s))", OSGI_FRAMEWORK_OBJECTCLASS, OSGI_RSA_ENDPOINT_FRAMEWORK_UUID, uuid);
    scope[len] = 0;

    properties_pt props = properties_create();
    properties_set(props, "DISCOVERY", "true");
    properties_set(props, (char *) OSGI_ENDPOINT_LISTENER_SCOPE, scope);

    if (status == CELIX_SUCCESS) {
        endpoint_listener_pt endpointListener = calloc(1, sizeof(struct endpoint_listener));

        if (endpointListener) {
            endpointListener->handle = act;
            endpointListener->endpointAdded = discovery_endpointAdded;
            endpointListener->endpointRemoved = discovery_endpointRemoved;

            status = bundleContext_registerService(context, (char *) OSGI_ENDPOINT_LISTENER_SERVICE, endpointListener, props, &act->endpointListenerService);

            if (status == CELIX_SUCCESS) {
                act->endpointListener = endpointListener;
            } else {
                free(endpointListener);
            }
        }
    }
    // We can release the scope, as properties_set makes a copy of the key & value...
    free(scope);

    return status;
}

celix_status_t bundleActivator_stop(void * userData, bundle_context_pt context) {
    celix_status_t status;
    struct disc_mock_activator * act = userData;

    status = serviceRegistration_unregister(act->reg);

    return status;
}

celix_status_t bundleActivator_destroy(void * userData, bundle_context_pt context) {
    struct disc_mock_activator *act = userData;
    if (act != NULL) {
        discMockService_destroy(act->serv);

        free(act->endpointListener);
        arrayList_destroy(act->endpointList);
        free(act);
    }
    return CELIX_SUCCESS;
}

celix_status_t discovery_endpointAdded(void *handle, endpoint_description_pt endpoint, char *matchedFilter) {
    celix_status_t status = CELIX_SUCCESS;
    struct disc_mock_activator *act = handle;

    printf("%s\n", __func__);
    arrayList_add(act->endpointList, endpoint);

    return status;
}

celix_status_t discovery_endpointRemoved(void *handle, endpoint_description_pt endpoint, char *matchedFilter) {
    celix_status_t status  = CELIX_SUCCESS;
    struct disc_mock_activator *act = handle;
    printf("%s\n", __func__);
    arrayList_removeElement(act->endpointList, endpoint);

    return status;
}

