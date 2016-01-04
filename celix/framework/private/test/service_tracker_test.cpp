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
 * service_tracker_test.cpp
 *
 *  \date       Feb 6, 2013
 *  \author     <a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright  Apache License, Version 2.0
 */
#include <stdlib.h>
#include <stdio.h>

#include "CppUTest/TestHarness.h"
#include "CppUTest/TestHarness_c.h"
#include "CppUTest/CommandLineTestRunner.h"
#include "CppUTestExt/MockSupport.h"

extern "C"
{
#include "service_tracker_private.h"
#include "service_reference_private.h"
#include "celix_log.h"

framework_logger_pt logger = (framework_logger_pt) 0x42;
}

int main(int argc, char** argv) {
	return RUN_ALL_TESTS(argc, argv);
}

TEST_GROUP(service_tracker) {
	void setup(void) {
	}

	void teardown() {
		mock().checkExpectations();
		mock().clear();
	}
};

TEST(service_tracker, create) {
	celix_status_t status;
	service_tracker_pt tracker = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x123;
	std::string service = "service";
	status = serviceTracker_create(ctx, (char *) service.c_str(), NULL, &tracker);

	LONGS_EQUAL(CELIX_SUCCESS, status);
	POINTERS_EQUAL(ctx, tracker->context);
	POINTERS_EQUAL(NULL, tracker->customizer);
	POINTERS_EQUAL(NULL, tracker->listener);
	POINTERS_EQUAL(tracker, tracker->tracker);
	STRCMP_EQUAL("(objectClass=service)", tracker->filter);

	serviceTracker_destroy(tracker);
}

TEST(service_tracker, createWithFilter) {
	celix_status_t status;
	service_tracker_pt tracker = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x123;
	std::string filter = "(objectClass=test)";
	status = serviceTracker_createWithFilter(ctx, (char *) filter.c_str(), NULL, &tracker);

	LONGS_EQUAL(CELIX_SUCCESS, status);
	POINTERS_EQUAL(ctx, tracker->context);
	POINTERS_EQUAL(NULL, tracker->customizer);
	POINTERS_EQUAL(NULL, tracker->listener);
	POINTERS_EQUAL(tracker, tracker->tracker);
	STRCMP_EQUAL("(objectClass=test)", tracker->filter);

	serviceTracker_destroy(tracker);
}

TEST(service_tracker, destroy) {
	celix_status_t status;
	service_tracker_pt tracker = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x123;
	std::string filter = "(objectClass=test)";
	status = serviceTracker_createWithFilter(ctx, (char *) filter.c_str(), NULL, &tracker);
	LONGS_EQUAL(CELIX_SUCCESS, status);
	service_listener_pt listener = (service_listener_pt) calloc(1, sizeof(serviceListener));
	tracker->listener = listener;

	mock()
		.expectOneCall("bundleContext_removeServiceListener")
		.withParameter("context", ctx)
		.withParameter("listener", listener)
		.andReturnValue(CELIX_SUCCESS);

	status = serviceTracker_destroy(tracker);
	LONGS_EQUAL(CELIX_SUCCESS, status);
}

TEST(service_tracker, open) {
	// Without initial services and no customizer
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	std::string filter = "(objectClass=service)";
	tracker->filter = (char *) filter.c_str();
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;

	array_list_pt refs = NULL;
	arrayList_create(&refs);

	mock().strictOrder();
	mock()
		.expectOneCall("bundleContext_getServiceReferences")
		.withParameter("context", ctx)
		.withParameter("serviceName", (char *) NULL)
		.withParameter("filter", "(objectClass=service)")
		.withOutputParameterReturning("service_references", &refs, sizeof(refs))
		.andReturnValue(CELIX_SUCCESS);
	mock()
		.expectOneCall("bundleContext_addServiceListener")
		.withParameter("context", ctx)
		.withParameter("filter", "(objectClass=service)")
		.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS);
	serviceTracker_open(tracker);
	CHECK(tracker->listener != NULL);

	// No services should be found
	LONGS_EQUAL(0, arrayList_size(tracker->trackedServices));

	arrayList_destroy(tracked);

	free(tracker->listener);
	free(tracker);
}

TEST(service_tracker, open_withRefs) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	tracker->customizer = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	std::string filter = "(objectClass=service)";
	tracker->filter = (char *) filter.c_str();
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
//	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
//	entry->service = (void *) 0x31;
//	service_reference_pt ref = (service_reference_pt) 0x51;
//	entry->reference = ref;
//	arrayList_add(tracked, entry);
//	tracked_pt entry2 = (tracked_pt) malloc(sizeof(*entry));
//	entry2->service = (void *) 0x32;
//	service_reference_pt ref2 = (service_reference_pt) 0x52;
//	entry2->reference = ref2;
//	arrayList_add(tracked, entry2);

	array_list_pt refs = NULL;
	arrayList_create(&refs);
	service_reference_pt ref = (service_reference_pt) malloc(sizeof(*ref));
	arrayList_add(refs, ref);
	void *src = (void *) 0x345;

//	mock().strictOrder();
	mock()
		.expectOneCall("bundleContext_getServiceReferences")
		.withParameter("context", ctx)
		.withParameter("serviceName", (char *) NULL)
		.withParameter("filter", "(objectClass=service)")
		.withOutputParameterReturning("service_references", &refs, sizeof(refs))
		.andReturnValue(CELIX_SUCCESS);
	mock()
		.expectOneCall("bundleContext_addServiceListener")
		.withParameter("context", ctx)
		.withParameter("filter", "(objectClass=service)")
		.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS);
	mock()
		.expectOneCall("bundleContext_getService")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.withOutputParameterReturning("service_instance", &src, sizeof(src))
		.andReturnValue(CELIX_SUCCESS);
	serviceTracker_open(tracker);
	CHECK(tracker->listener != NULL);

	// One service should be found
	LONGS_EQUAL(1, arrayList_size(tracker->trackedServices));

	free(arrayList_get(tracked, 0));
	arrayList_destroy(tracked);

	free(tracker->listener);
	free(tracker);
	free(ref);
}

TEST(service_tracker, open_withRefsAndTracked) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	tracker->customizer = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	std::string filter = "(objectClass=service)";
	tracker->filter = (char *) filter.c_str();
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	array_list_pt refs = NULL;
	arrayList_create(&refs);
	arrayList_add(refs, ref);

//	mock().strictOrder();
	mock()
		.expectOneCall("bundleContext_getServiceReferences")
		.withParameter("context", ctx)
		.withParameter("serviceName", (char *) NULL)
		.withParameter("filter", "(objectClass=service)")
		.withOutputParameterReturning("service_references", &refs, sizeof(refs))
		.andReturnValue(CELIX_SUCCESS);
	mock()
		.expectOneCall("bundleContext_addServiceListener")
		.withParameter("context", ctx)
		.withParameter("filter", "(objectClass=service)")
		.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS);

	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withParameter("compareTo", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		//.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS);

	serviceTracker_open(tracker);
	CHECK(tracker->listener != NULL);

	// One service should be found
	LONGS_EQUAL(1, arrayList_size(tracker->trackedServices));

	arrayList_destroy(tracked);

	free(tracker->listener);
	free(tracker);
	free(entry);
}

TEST(service_tracker, close) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	tracker->customizer = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x345;
	tracker->context = ctx;
	// new tracker->listener
	service_listener_pt listener = (service_listener_pt) 0x42;
	tracker->listener = (service_listener_pt) listener;
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	mock()
		.expectOneCall("bundleContext_removeServiceListener")
		.withParameter("context", ctx)
		.withParameter("listener", listener)
		.andReturnValue(CELIX_SUCCESS);
	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withParameter("compareTo", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.andReturnValue(CELIX_SUCCESS);
	bool result = true;
	mock()
		.expectOneCall("bundleContext_ungetService")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.withOutputParameterReturning("result", &result, sizeof(result))
		.andReturnValue(CELIX_SUCCESS);

	mock()
		.expectOneCall("bundleContext_ungetServiceReference")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.andReturnValue(CELIX_SUCCESS);

	serviceTracker_close(tracker);

	arrayList_destroy(tracked);
	free(tracker);
}

TEST(service_tracker, getServiceReference) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);
	tracked_pt entry2 = (tracked_pt) malloc(sizeof(*entry));
	entry2->service = (void *) 0x32;
	service_reference_pt ref2 = (service_reference_pt) 0x52;
	entry2->reference = ref2;
	arrayList_add(tracked, entry2);

	service_reference_pt reference = serviceTracker_getServiceReference(tracker);
	POINTERS_EQUAL(ref, reference);

	arrayList_destroy(tracked);

	free(tracker);
	free(entry);
	free(entry2);
}

TEST(service_tracker, getServiceReferenceNull) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;

	service_reference_pt reference = serviceTracker_getServiceReference(tracker);
	POINTERS_EQUAL(NULL, reference);

	arrayList_destroy(tracked);
	free(tracker);
}

TEST(service_tracker, getServiceReferences) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);
	tracked_pt entry2 = (tracked_pt) malloc(sizeof(*entry));
	entry2->service = (void *) 0x32;
	service_reference_pt ref2 = (service_reference_pt) 0x52;
	entry2->reference = ref2;
	arrayList_add(tracked, entry2);

	array_list_pt references = serviceTracker_getServiceReferences(tracker);
	LONGS_EQUAL(2, arrayList_size(references));
	POINTERS_EQUAL(ref, arrayList_get(references, 0));
	POINTERS_EQUAL(ref2, arrayList_get(references, 1));

	arrayList_destroy(references);
	arrayList_destroy(tracked);

	free(tracker);
	free(entry);
	free(entry2);
}

TEST(service_tracker, getService) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);
	tracked_pt entry2 = (tracked_pt) malloc(sizeof(*entry));
	entry2->service = (void *) 0x32;
	service_reference_pt ref2 = (service_reference_pt) 0x52;
	entry2->reference = ref2;
	arrayList_add(tracked, entry2);

	void *service = serviceTracker_getService(tracker);
	POINTERS_EQUAL(0x31, service);

	arrayList_destroy(tracked);

	free(entry);
	free(entry2);
	free(tracker);
}

TEST(service_tracker, getServiceNull) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;

	void *service = serviceTracker_getService(tracker);
	POINTERS_EQUAL(NULL, service);

	arrayList_destroy(tracked);
	free(tracker);
}

TEST(service_tracker, getServices) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);
	tracked_pt entry2 = (tracked_pt) malloc(sizeof(*entry));
	entry2->service = (void *) 0x32;
	service_reference_pt ref2 = (service_reference_pt) 0x52;
	entry2->reference = ref2;
	arrayList_add(tracked, entry2);

	array_list_pt services = serviceTracker_getServices(tracker);
	LONGS_EQUAL(2, arrayList_size(services));
	POINTERS_EQUAL(0x31, arrayList_get(services, 0));
	POINTERS_EQUAL(0x32, arrayList_get(services, 1));

	arrayList_destroy(services);
	arrayList_destroy(tracked);

	free(entry);
	free(entry2);
	free(tracker);
}

TEST(service_tracker, getServiceByReference) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withParameter("compareTo", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.andReturnValue(4);
		//.ignoreOtherParameters();
	void *service = serviceTracker_getServiceByReference(tracker, ref);
	POINTERS_EQUAL(0x31, service);

	arrayList_destroy(tracked);

	free(tracker);
	free(entry);
}

TEST(service_tracker, getServiceByReferenceNull) {
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	bool equal = false;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS)
		.withCallOrder(1);
	void *service = serviceTracker_getServiceByReference(tracker, ref);
	POINTERS_EQUAL(NULL, service);

	arrayList_destroy(tracked);

	free(tracker);
	free(entry);
}

TEST(service_tracker, serviceChangedRegistered) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	tracker->customizer = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;

	service_reference_pt ref = (service_reference_pt) 0x51;

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_REGISTERED;
	event->reference = ref;

	void *src = (void *) 0x345;
	mock()
		.expectOneCall("bundleContext_getService")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.withOutputParameterReturning("service_instance", &src, sizeof(src))
		.andReturnValue(CELIX_SUCCESS);
	serviceTracker_serviceChanged(listener, event);

	free(arrayList_get(tracked, 0));
	arrayList_destroy(tracked);

	free(event);
	free(tracker);
	free(listener);
}

TEST(service_tracker, serviceChangedModified) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	tracker->customizer = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;

	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_MODIFIED;
	event->reference = ref;

	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS);

	serviceTracker_serviceChanged(listener, event);

	free(arrayList_get(tracked, 0));
	free(arrayList_get(tracked, 1));
	arrayList_destroy(tracked);

	free(event);
	free(listener);
	free(tracker);
}

TEST(service_tracker, serviceChangedUnregistering) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	tracker->customizer = NULL;
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;

	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_UNREGISTERING;
	event->reference = ref;

	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withParameter("compareTo", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.andReturnValue(CELIX_SUCCESS);
	bool result = true;
	mock()
		.expectOneCall("bundleContext_ungetService")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.withOutputParameterReturning("result", &result, sizeof(result))
		.andReturnValue(CELIX_SUCCESS);

	mock()
		.expectOneCall("bundleContext_ungetServiceReference")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.andReturnValue(CELIX_SUCCESS);

	serviceTracker_serviceChanged(listener, event);

	arrayList_destroy(tracked);

	free(listener);
	free(event);
	free(tracker);
}

TEST(service_tracker, serviceChangedModifiedEndmatch) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;

	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_MODIFIED_ENDMATCH;
	event->reference = ref;

	serviceTracker_serviceChanged(listener, event);

	arrayList_destroy(tracked);

	free(entry);
	free(listener);
	free(tracker);
	free(event);
}

extern "C" {
	celix_status_t serviceDependency_addingService(void * handle, service_reference_pt reference, void **service) {
		*service = (void*) 0x45;
		return CELIX_SUCCESS;
	}

	celix_status_t serviceDependency_addedService(void * handle, service_reference_pt reference, void *service) {
		return CELIX_SUCCESS;
	}
}

TEST(service_tracker, serviceChangedRegisteredCustomizer) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
	service_tracker_customizer_pt customizer = (service_tracker_customizer_pt) 0x20;
	tracker->customizer = customizer;

	service_reference_pt ref = (service_reference_pt) 0x51;

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_REGISTERED;
	event->reference = ref;

	void * handle = (void*) 0x60;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getHandle")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("handle", &handle, sizeof(handle))
		.andReturnValue(CELIX_SUCCESS);
	void *function = (void *) serviceDependency_addingService;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getAddingFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &function, sizeof(function))
		.andReturnValue(CELIX_SUCCESS);
	mock()
		.expectOneCall("serviceTrackerCustomizer_getHandle")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("handle", &handle, sizeof(handle))
		.andReturnValue(CELIX_SUCCESS);
	void *function2 = (void *) serviceDependency_addedService;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getAddedFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &function2, sizeof(function))
		.andReturnValue(CELIX_SUCCESS);
	serviceTracker_serviceChanged(listener, event);

	free(arrayList_get(tracked, 0));
	arrayList_destroy(tracked);

	free(event);
	free(tracker);
	free(listener);
}


extern "C" {
	celix_status_t serviceDependency_modifiedService(void * handle, service_reference_pt reference, void * service) {
		return CELIX_SUCCESS;
	}
}

TEST(service_tracker, serviceChangedModifiedCustomizer) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;
	service_tracker_customizer_pt customizer = (service_tracker_customizer_pt) 0x20;
	tracker->customizer = customizer;
	//adding_callback_pt adding_func = NULL;
	//added_callback_pt added_func = NULL;

	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_MODIFIED;
	event->reference = ref;

	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.ignoreOtherParameters()
		.andReturnValue(CELIX_SUCCESS);
	void * handle = (void*) 0x60;

/*	this branch is not covered here, unlike earlier faulty tests
	mock()
		.expectOneCall("serviceTrackerCustomizer_getHandle")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("handle", &handle, sizeof(handle))
		.andReturnValue(CELIX_SUCCESS);

	mock()
		.expectOneCall("serviceTrackerCustomizer_getAddingFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &adding_func, sizeof(adding_func))
		.andReturnValue(CELIX_SUCCESS);

	mock()
		.expectOneCall("serviceTrackerCustomizer_getAddedFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &added_func, sizeof(added_func));

	mock()
		.expectOneCall("bundleContext_getService")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.withOutputParameterReturning("service_instance", &entry->service, sizeof(entry->service));
*/

	mock()
			.expectOneCall("serviceTrackerCustomizer_getHandle")
			.withParameter("customizer", customizer)
			.withOutputParameterReturning("handle", &handle, sizeof(handle))
			.andReturnValue(CELIX_SUCCESS);

	void *function = (void *) serviceDependency_modifiedService;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getModifiedFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &function, sizeof(function))
		.andReturnValue(CELIX_SUCCESS);

	serviceTracker_serviceChanged(listener, event);

	free(arrayList_get(tracked, 0));
	free(arrayList_get(tracked, 1));
	arrayList_destroy(tracked);

	free(event);
	free(listener);
	free(tracker);
}

extern "C" {
	celix_status_t serviceDependency_removedService(void * handle, service_reference_pt reference, void * service) {
		return CELIX_SUCCESS;
	}
}

TEST(service_tracker, serviceChangedUnregisteringCustomizer) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;
	service_tracker_customizer_pt customizer = (service_tracker_customizer_pt) 0x20;
	tracker->customizer = customizer;

	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_UNREGISTERING;
	event->reference = ref;

	bool equal = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withParameter("compareTo", ref)
		.withOutputParameterReturning("equal", &equal, sizeof(equal))
		.andReturnValue(CELIX_SUCCESS);
	void * handle = (void*) 0x60;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getHandle")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("handle", &handle, sizeof(handle))
		.andReturnValue(CELIX_SUCCESS);
	void *function = (void*) serviceDependency_removedService;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getRemovedFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &function , sizeof(function))
		.andReturnValue(CELIX_SUCCESS);

	mock()
		.expectOneCall("bundleContext_ungetServiceReference")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.andReturnValue(CELIX_SUCCESS);
	serviceTracker_serviceChanged(listener, event);

	arrayList_destroy(tracked);

	free(listener);
	free(event);
	free(tracker);
}

TEST(service_tracker, serviceChangedUnregisteringCustomizerNoFunc) {
	// With one initial service
	// new tracker
	service_tracker_pt tracker = (service_tracker_pt) malloc(sizeof(*tracker));
	bundle_context_pt ctx = (bundle_context_pt) 0x10;
	tracker->context = ctx;
	service_listener_pt listener = (service_listener_pt) malloc(sizeof(*listener));
	tracker->listener = listener;
	listener->handle = tracker;
	service_tracker_customizer_pt customizer = (service_tracker_customizer_pt) 0x20;
	tracker->customizer = customizer;

	// new tracker->trackedServices
	array_list_pt tracked = NULL;
	arrayList_create(&tracked);
	tracker->trackedServices = tracked;
//	// add tracked to tracker->trackedServices
	tracked_pt entry = (tracked_pt) malloc(sizeof(*entry));
	entry->service = (void *) 0x31;
	service_reference_pt ref = (service_reference_pt) 0x51;
	entry->reference = ref;
	arrayList_add(tracked, entry);

	service_event_pt event = (service_event_pt) malloc(sizeof(*event));
	event->type = OSGI_FRAMEWORK_SERVICE_EVENT_UNREGISTERING;
	event->reference = ref;

	bool equals = true;
	mock()
		.expectOneCall("serviceReference_equals")
		.withParameter("reference", ref)
		.withParameter("compareTo", ref)
		.withOutputParameterReturning("equal", &equals, sizeof(equals))
		.andReturnValue(CELIX_SUCCESS);
	void * handle = (void*) 0x60;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getHandle")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("handle", &handle, sizeof(handle))
		.andReturnValue(CELIX_SUCCESS);
	void *function = NULL;
	mock()
		.expectOneCall("serviceTrackerCustomizer_getRemovedFunction")
		.withParameter("customizer", customizer)
		.withOutputParameterReturning("function", &function, sizeof(function))
		.andReturnValue(CELIX_SUCCESS);
	bool result = true;
	mock()
		.expectOneCall("bundleContext_ungetService")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.withOutputParameterReturning("result", &result, sizeof(result))
		.andReturnValue(CELIX_SUCCESS);

	mock()
		.expectOneCall("bundleContext_ungetServiceReference")
		.withParameter("context", ctx)
		.withParameter("reference", ref)
		.andReturnValue(CELIX_SUCCESS);

	serviceTracker_serviceChanged(listener, event);

	arrayList_destroy(tracked);
	free(listener);
	free(tracker);
	free(event);
}



