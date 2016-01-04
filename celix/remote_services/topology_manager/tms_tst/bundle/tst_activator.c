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

#include "tst_service.h"
#include "calculator_service.h"

#define IMPORT_SERVICE_NAME "org.apache.celix.test.MyBundle"  // see TmsTest.cpp

struct activator {
    bundle_context_pt context;
    struct tst_service serv;
    service_registration_pt reg;

    service_tracker_customizer_pt cust;
    service_tracker_pt tracker;
    tst_service_pt *import;  // MyBundle service pointer
};

static celix_status_t addImport(void * handle, service_reference_pt reference, void * service);
static celix_status_t removeImport(void * handle, service_reference_pt reference, void * service);

static bool IsImported(void *handle);

celix_status_t bundleActivator_create(bundle_context_pt context, void **out) {
    celix_status_t status = CELIX_SUCCESS;
    struct activator *act = calloc(1, sizeof(*act));
    if (act != NULL) {
        act->context = context;
        act->serv.handle = act;
        act->serv.IsImported = IsImported;
        act->import = NULL;

        status = serviceTrackerCustomizer_create(act, NULL, addImport, NULL, removeImport, &act->cust);
        status = CELIX_DO_IF(status, serviceTracker_create(context, IMPORT_SERVICE_NAME, act->cust, &act->tracker));

    } else {
        status = CELIX_ENOMEM;
    }

    if (status == CELIX_SUCCESS) {
        *out = act;
    } else if (act != NULL) {
        if (act->cust != NULL) {
            free(act->cust);
            act->cust = NULL;
        }
        if (act->tracker != NULL) {
            serviceTracker_destroy(act->tracker);
            act->tracker = NULL;
        }
        free(act);
    }

    return CELIX_SUCCESS;
}

static celix_status_t addImport(void * handle, service_reference_pt reference, void * service) {
    celix_status_t status = CELIX_SUCCESS;
    struct activator * act = handle;
    act->import = service;
    return status;
}

static celix_status_t removeImport(void * handle, service_reference_pt reference, void * service) {
    celix_status_t status = CELIX_SUCCESS;
    struct activator * act = handle;
    if (act->import == service) {
        act->import = NULL;
    }
    return status;

}

celix_status_t bundleActivator_start(void * userData, bundle_context_pt context) {
    celix_status_t status;
    struct activator * act = userData;

    act->reg = NULL;
    status = bundleContext_registerService(context, (char *) TST_SERVICE_NAME, &act->serv, NULL, &act->reg);

    status = CELIX_DO_IF(status, serviceTracker_open(act->tracker));

    return status;
}

celix_status_t bundleActivator_stop(void * userData, bundle_context_pt context) {
    celix_status_t status;
    struct activator * act = userData;

    status = serviceRegistration_unregister(act->reg);
    status = CELIX_DO_IF(status, serviceTracker_close(act->tracker));

    return status;
}

celix_status_t bundleActivator_destroy(void * userData, bundle_context_pt context) {
    struct activator *act = userData;
    if (act != NULL) {
        if (act->tracker != NULL) {
            serviceTracker_destroy(act->tracker);
            act->tracker = NULL;
        }
        free(act);
    }
    return CELIX_SUCCESS;
}

static bool IsImported(void *handle) {

    tst_service_pt service = (tst_service_pt) handle;
    struct activator *act = (struct activator *) service->handle;

    return (act->import != NULL);
}
