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
 * activator.c
 *
 *  \date       Aug 22, 2011
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */
#include <stdlib.h>
#include <stdio.h>
#include <apr_general.h>
#include <glib.h>
#include <gtk/gtk.h>
#include <gdk/gdk.h>

#include "bundle_activator.h"
#include "bundle_context.h"
#include "simple_shape.h"
#include "paint_frame.h"
#include "service_tracker.h"
#include "service_reference.h"
#include "service_registration.h"

struct paintFrameActivatorData {
	service_registration_pt reg;
	apr_pool_t *pool;
	service_tracker_pt tracker;
	bundle_context_pt context;
	paint_frame_pt paint_frame;
};
celix_status_t addingServ(void * handle, service_reference_pt ref, void **service);
celix_status_t addedServ(void * handle, service_reference_pt reference, void * service);
celix_status_t modifiedServ(void * handle, service_reference_pt reference, void * service);
celix_status_t removedServ(void * handle, service_reference_pt reference, void * service);

typedef struct paintFrameActivatorData *greeting_activator_pt;

celix_status_t bundleActivator_create(bundle_context_pt context, void **userData) {
	celix_status_t status = CELIX_SUCCESS;
	apr_pool_t *pool;
	greeting_activator_pt activator;
	service_tracker_customizer_pt cust = NULL;
	printf("Paint_frame create\n");
	status = bundleContext_getMemoryPool(context, &pool);
	if (status == CELIX_SUCCESS) {
		*userData = apr_palloc(pool, sizeof(struct paintFrameActivatorData));
		activator = *userData;
		activator->reg = NULL;
		activator->pool = pool;
		activator->context = context;
		activator->paint_frame = NULL;
		activator->tracker = NULL;
		status = paintFrame_create(context, pool, &activator->paint_frame);

		serviceTrackerCustomizer_create(pool, activator, addingServ,
				addedServ, modifiedServ, removedServ, &cust);

        serviceTracker_create(pool, context, SIMPLE_SHAPE_SERVICE_NAME, cust, &activator->tracker);
		serviceTracker_open(activator->tracker);

	}
	return status;
}

celix_status_t bundleActivator_start(void * userData, bundle_context_pt ctx) {
	struct paintFrameActivatorData * act = (struct paintFrameActivatorData *) userData;
	celix_status_t status = CELIX_SUCCESS;
	return status;
}

celix_status_t bundleActivator_stop(void * userData, bundle_context_pt context) {
	struct paintFrameActivatorData * act = (struct paintFrameActivatorData *) userData;
	serviceTracker_close(act->tracker);
	paintFrame_exit(act->paint_frame);
	return CELIX_SUCCESS;
}

celix_status_t bundleActivator_destroy(void * userData, bundle_context_pt context) {
	struct paintFrameActivatorData * act = (struct paintFrameActivatorData *) userData;
	return CELIX_SUCCESS;
}

celix_status_t addingServ(void * handle, service_reference_pt ref, void **service) {
	struct paintFrameActivatorData * data = (struct paintFrameActivatorData *) handle;
    bundleContext_getService(data->context, ref, service);
    return CELIX_SUCCESS;
}

celix_status_t addedServ(void * handle, service_reference_pt ref, void * service) {
	struct paintFrameActivatorData * data = (struct paintFrameActivatorData *) handle;
	service_registration_pt reg = NULL;
	properties_pt props = NULL;
	char * serviceName = NULL;
	serviceReference_getServiceRegistration(ref, &reg);
	serviceRegistration_getProperties(reg, &props);
	serviceName = properties_get(props, "name");
	paintFrame_addShape(data->paint_frame, data->context, service);
	return CELIX_SUCCESS;
 }

celix_status_t modifiedServ(void * handle, service_reference_pt ref, void * service) {
	struct paintFrameActivatorData * data = (struct paintFrameActivatorData *) handle;
	service_registration_pt reg = NULL;
	properties_pt props = NULL;
	char * serviceName = NULL;
	serviceReference_getServiceRegistration(ref, &reg);
	serviceRegistration_getProperties(reg, &props);
	serviceName = properties_get(props, "name");
	return CELIX_SUCCESS;
}

celix_status_t removedServ(void * handle, service_reference_pt ref, void * service) {
	struct paintFrameActivatorData * data = (struct paintFrameActivatorData *) handle;
	service_registration_pt reg = NULL;
	properties_pt props = NULL;
	char * serviceName = NULL;
	serviceReference_getServiceRegistration(ref, &reg);
	serviceRegistration_getProperties(reg, &props);
	serviceName = properties_get(props, "name");
	paintFrame_removeShape(data->paint_frame, service);
	return CELIX_SUCCESS;
}
