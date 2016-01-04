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
 * bundle_private.h
 *
 *  \date       Feb 18, 2011
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */

#ifndef BUNDLE_PRIVATE_H_
#define BUNDLE_PRIVATE_H_

#include "bundle.h"

struct bundle {
	bundle_context_pt context;
	activator_pt activator;
	bundle_state_e state;
	void * handle;
	bundle_archive_pt archive;
	array_list_pt modules;
	manifest_pt manifest;

	celix_thread_mutex_t lock;
	int lockCount;
	celix_thread_t lockThread;

	struct framework * framework;
};

#endif /* BUNDLE_PRIVATE_H_ */
