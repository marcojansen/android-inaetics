#include "shakedetection_impl.h"

#include "bundle_activator.h"
#include "bundle_context.h"
#include "constants.h"
#include "properties.h"
#include "service_tracker.h"
#include "service_tracker_customizer.h"

struct bundle_activator {
	bundle_context_pt context;
	service_tracker_pt producerTracker;
	shakedetector_pt shakedetector;
};

typedef struct bundle_activator* bundle_activator_pt;

celix_status_t bundleActivator_create(bundle_context_pt context, void **userData) {
	celix_status_t status = CELIX_SUCCESS;
	//Allocate activator
	bundle_activator_pt activator = (bundle_activator_pt) calloc(1,sizeof(*activator));
	if (activator) {
		activator->producerTracker = NULL;
		activator->shakedetector = NULL;
		//userData is now the bundle_activator
		*userData = activator;
	} else {
		status = CELIX_ENOMEM;
	}

	return status;
}

celix_status_t bundleActivator_start(void * userData, bundle_context_pt context) {
	celix_status_t status = CELIX_SUCCESS;
	service_tracker_customizer_pt producerCustomizer = NULL;
	char * uuid = NULL;
	char filter[512];

	bundle_activator_pt activator = (bundle_activator_pt) userData;
	bundleContext_getProperty(context, OSGI_FRAMEWORK_FRAMEWORK_UUID, &uuid);

	// Create shakedetection struct
	status = shakedetection_create(uuid, &activator->shakedetector);

	// Tracker with filter to track local producer, filter checks for producer service name and framework uuid.
	serviceTrackerCustomizer_create(activator->shakedetector, NULL, shakedetection_producerAdded, NULL, shakedetection_producerRemoved, &producerCustomizer);
	snprintf(filter, sizeof(filter), "(&(%s=%s)(%s=%s))", OSGI_FRAMEWORK_OBJECTCLASS, INAETICS_DEMONSTRATOR_API__PRODUCER_SERVICE_NAME, OSGI_FRAMEWORK_FRAMEWORK_UUID, uuid);
	serviceTracker_createWithFilter(context, filter , producerCustomizer, &activator->producerTracker);
	serviceTracker_open(activator->producerTracker);

	return status;
}

celix_status_t bundleActivator_stop(void * userData, bundle_context_pt context) {
	bundle_activator_pt activator = (bundle_activator_pt) userData;
	//Close and destroy serviceTracker
	serviceTracker_close(activator->producerTracker);
	serviceTracker_destroy(activator->producerTracker);
	//Stop the shakedetection
	shakedetection_stop(activator->shakedetector);
	return CELIX_SUCCESS;
}

celix_status_t bundleActivator_destroy(void * userData, bundle_context_pt context) {
	free(userData);
	return CELIX_SUCCESS;
}
