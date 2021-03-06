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
 * sub_command.c
 *
 *  \date       Oct 13, 2011
 *  \author    	<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 *  \copyright	Apache License, Version 2.0
 */

#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include "array_list.h"
#include "bundle_context.h"
#include "sub_command.h"
#include "calculator_service.h"

static celix_status_t subCommand_isNumeric(char *number, bool *ret);

void subCommand_execute(bundle_context_pt context, char *line, FILE *out, FILE *err) {
	celix_status_t status = CELIX_SUCCESS;
    service_reference_pt calculatorService = NULL;

    status = bundleContext_getServiceReference(context, (char *) CALCULATOR_SERVICE, &calculatorService);
    if (status == CELIX_SUCCESS) {
    	char *token = line;
    	strtok_r(line, " ", &token);
		char *aStr = strtok_r(NULL, " ", &token);
		bool numeric;
		subCommand_isNumeric(aStr, &numeric);
		if (aStr != NULL && numeric) {
			char *bStr = strtok_r(NULL, " ", &token);
			subCommand_isNumeric(bStr, &numeric);
			if (bStr != NULL && numeric) {
				calculator_service_pt calculator = NULL;
				status = bundleContext_getService(context, calculatorService, (void *) &calculator);
				if (status == CELIX_SUCCESS) {
					double a = atof(aStr);
					double b = atof(bStr);
					double result = 0;
					status = calculator->sub(calculator->calculator, a, b, &result);
					if (status == CELIX_SUCCESS) {
						fprintf(out, "CALCULATOR_SHELL: Sub: %f - %f = %f\n", a, b, result);
					} else {
						fprintf(err, "SUB: Unexpected exception in Calc service\n");
					}
				} else {
					fprintf(err, "No calc service available\n");
				}
			} else {
				fprintf(err, "SUB: Requires 2 numerical parameter\n");
			}
		} else {
			fprintf(err, "SUB: Requires 2 numerical parameter\n");
			status = CELIX_ILLEGAL_ARGUMENT;
		}
    } else {
		fprintf(err, "No calc service available\n");
    }

    //return status;
}

static celix_status_t subCommand_isNumeric(char *number, bool *ret) {
	celix_status_t status = CELIX_SUCCESS;
	*ret = true;
	while(*number) {
		if(!isdigit(*number) && *number != '.') {
			*ret = false;
			break;
		}
		number++;
	}
	return status;
}
