/**
 * Licensed under Apache License v2. See LICENSE for more information.
 */
#ifndef SHAKEDETECTION_IMPL_H_
#define SHAKEDETECTION_IMPL_H_

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

#include "inaetics_demonstrator_api/producer.h"
#include "service_reference.h"
#include "celix_errno.h"

typedef struct shakedetector* shakedetector_pt;

celix_status_t shakedetection_create(char* name, shakedetector_pt* detector);
celix_status_t shakedetection_stop(shakedetector_pt detector);

celix_status_t shakedetection_producerAdded(void *handle, service_reference_pt reference, void *service);
celix_status_t shakedetection_producerRemoved(void *handle, service_reference_pt reference, void *service);

#endif /* SHAKEDETECTION_IMPL_H */
