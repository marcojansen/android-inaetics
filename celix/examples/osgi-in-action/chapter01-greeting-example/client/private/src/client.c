#include <sys/cdefs.h>/**
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
 * client.c
 *
 *  \date       Sep 29, 2011
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */
#include <stdlib.h>
#include <stdio.h>

#include "bundle_activator.h"
#include "greeting_service.h"


celix_status_t bundleActivator_create(bundle_context_pt  __attribute__((unused)) context, void **userData) {
	*userData = NULL;
	return CELIX_SUCCESS;
}

celix_status_t bundleActivator_start(void __attribute__((unused)) * userData, bundle_context_pt ctx) {
	service_reference_pt ref = NULL;
	celix_status_t status = bundleContext_getServiceReference(ctx, (char *) GREETING_SERVICE_NAME, &ref);
	if (status == CELIX_SUCCESS) {
		if (ref == NULL) {
			printf("Greeting service reference not available\n");
		} else {
			greeting_service_pt greeting = NULL;
			bundleContext_getService(ctx, ref, (void *) &greeting);
			if (greeting == NULL){
				printf("Greeting service not available\n");
			} else {
				bool result;
				(*greeting->greeting_sayHello)(greeting->instance);
				bundleContext_ungetService(ctx, ref, &result);
			}
		}
	}
	return status;
}

celix_status_t bundleActivator_stop(void __attribute__((unused)) * userData, bundle_context_pt  __attribute__((unused)) context) {
	return CELIX_SUCCESS;
}

celix_status_t bundleActivator_destroy(void __attribute__((unused)) * userData, bundle_context_pt  __attribute__((unused)) context) {
	return CELIX_SUCCESS;
}
