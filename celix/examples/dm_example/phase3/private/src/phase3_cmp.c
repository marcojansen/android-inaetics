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
 * publisher.c
 *
 *  \date       Oct 29, 2015
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

#include "array_list.h"
#include "celix_threads.h"
#include "phase3_cmp.h"

#define SLEEPTIME 2000000

struct phase3_cmp_struct {
	celix_thread_t thread;
    bool running;
	double currentValue;
    celix_thread_mutex_t mutex;
    array_list_pt phase2Services; //phase2_t *
};

static void *phase3_thread(void *data);

phase3_cmp_t *phase3_create(void) {
	phase3_cmp_t *cmp = calloc(1, sizeof(*cmp));
	if (cmp != NULL) {
		cmp->currentValue = 0.0;
        cmp->running = false;
        celixThreadMutex_create(&cmp->mutex, NULL);
        arrayList_create(&cmp->phase2Services);
	}
	return cmp;
}

int phase3_init(phase3_cmp_t *cmp) {
	printf("init phase3\n");
    return 0;
}

int phase3_start(phase3_cmp_t *cmp) {
	printf("start phase3\n");
    cmp->running = true;
    celixThread_create(&cmp->thread, NULL, phase3_thread, cmp);
    return 0;
}

int phase3_stop(phase3_cmp_t *cmp) {
	printf("stop phase3\n");
    cmp->running = false;
    celixThread_kill(cmp->thread, SIGUSR1);
    celixThread_join(cmp->thread, NULL);
    return 0;
}

int phase3_deinit(phase3_cmp_t *cmp) {
    printf("deinit phase1\n");
    return 0;
}

void phase3_destroy(phase3_cmp_t *cmp) {
    celixThreadMutex_lock(&cmp->mutex);
    arrayList_destroy(cmp->phase2Services);
    celixThreadMutex_unlock(&cmp->mutex);
    celixThreadMutex_destroy(&cmp->mutex);
    free(cmp);
	printf("destroy phase3\n");
}

int phase3_addPhase2(phase3_cmp_t *cmp, phase2_t *phase2) {
    celixThreadMutex_lock(&cmp->mutex);
    arrayList_add(cmp->phase2Services, phase2);
    celixThreadMutex_unlock(&cmp->mutex);
    return 0;
}

int phase3_removePhase2(phase3_cmp_t *cmp, phase2_t *phase2) {
    celixThreadMutex_lock(&cmp->mutex);
    arrayList_removeElement(cmp->phase2Services, phase2);
    celixThreadMutex_unlock(&cmp->mutex);
    return 0;
}


static void *phase3_thread(void *data) {
    phase3_cmp_t *cmp = data;
    int size;
    int i;
    double value;

    while (cmp->running) {
        celixThreadMutex_lock(&cmp->mutex);
        size = arrayList_size(cmp->phase2Services);
        for (i = 0; i < size; i += 1) {
            phase2_t *serv = arrayList_get(cmp->phase2Services, i);
            serv->getData(serv->handle, &value);
            printf("PHASE3: Data from %p is %f\n", serv, value);
        }
        celixThreadMutex_unlock(&cmp->mutex);
        usleep(SLEEPTIME);
    }

    celixThread_exit(NULL);
    return NULL;
}