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
#include <CppUTest/TestHarness.h>
#include "CppUTest/CommandLineTestRunner.h"

extern "C" {

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>

#include "dyn_common.h"
#include "dyn_message.h"

#if defined(BSD) || defined(__APPLE__) 
#include "open_memstream.h"
#include "fmemopen.h"
#endif

static void stdLog(void *handle, int level, const char *file, int line, const char *msg, ...) {
	va_list ap;
	const char *levels[5] = {"NIL", "ERROR", "WARNING", "INFO", "DEBUG"};
	fprintf(stderr, "%s: FILE:%s, LINE:%i, MSG:",levels[level], file, line);
	va_start(ap, msg);
	vfprintf(stderr, msg, ap);
	fprintf(stderr, "\n");
}


static void msg_test1(void) {
	int status = 0;
	dyn_message_type *dynMsg = NULL;
	FILE *desc = fopen("descriptors/msg_example1.descriptor", "r");
	assert(desc != NULL);
	status = dynMessage_parse(desc, &dynMsg);
	CHECK_EQUAL(0, status);
	fclose(desc);

	char *name = NULL;
	status = dynMessage_getName(dynMsg, &name);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("poi", name);

	char *version = NULL;
	status = dynMessage_getVersion(dynMsg, &version);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("1.0.0", version);

	char *annVal = NULL;
	status = dynMessage_getAnnotationEntry(dynMsg, "classname", &annVal);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("org.example.PointOfInterest", annVal);

	char *nonExist = NULL;
	status = dynMessage_getHeaderEntry(dynMsg, "nonExisting", &nonExist);
	CHECK(status != 0);
	CHECK(nonExist == NULL);

	dyn_type *msgType = NULL;
	status = dynMessage_getMessageType(dynMsg, &msgType);
	CHECK_EQUAL(0, status);
	CHECK(msgType != NULL);

	dynMessage_destroy(dynMsg);
}


static void msg_test2(void) {
	int status = 0;
	dyn_message_type *dynMsg = NULL;
	FILE *desc = fopen("descriptors/msg_example2.descriptor", "r");
	assert(desc != NULL);
	status = dynMessage_parse(desc, &dynMsg);
	CHECK_EQUAL(0, status);
	fclose(desc);

	char *name = NULL;
	status = dynMessage_getName(dynMsg, &name);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("track", name);

	char *version = NULL;
	status = dynMessage_getVersion(dynMsg, &version);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("0.0.1", version);

	char *annVal = NULL;
	status = dynMessage_getAnnotationEntry(dynMsg, "classname", &annVal);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("org.example.Track", annVal);

	char *nonExist = NULL;
	status = dynMessage_getHeaderEntry(dynMsg, "nonExisting", &nonExist);
	CHECK(status != 0);
	CHECK(nonExist == NULL);

	dyn_type *msgType = NULL;
	status = dynMessage_getMessageType(dynMsg, &msgType);
	CHECK_EQUAL(0, status);
	CHECK(msgType != NULL);

	dynMessage_destroy(dynMsg);
}

static void msg_test3(void) {
	int status = 0;
	dyn_message_type *dynMsg = NULL;
	FILE *desc = fopen("descriptors/msg_example3.descriptor", "r");
	assert(desc != NULL);
	status = dynMessage_parse(desc, &dynMsg);
	CHECK_EQUAL(0, status);
	fclose(desc);

	char *name = NULL;
	status = dynMessage_getName(dynMsg, &name);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("logEntry", name);

	char *version = NULL;
	status = dynMessage_getVersion(dynMsg, &version);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("1.0.0", version);

	char *annVal = NULL;
	status = dynMessage_getAnnotationEntry(dynMsg, "classname", &annVal);
	CHECK_EQUAL(0, status);
	STRCMP_EQUAL("org.example.LogEntry", annVal);

	char *nonExist = NULL;
	status = dynMessage_getHeaderEntry(dynMsg, "nonExisting", &nonExist);
	CHECK(status != 0);
	CHECK(nonExist == NULL);

	dyn_type *msgType = NULL;
	status = dynMessage_getMessageType(dynMsg, &msgType);
	CHECK_EQUAL(0, status);
	CHECK(msgType != NULL);

	dynMessage_destroy(dynMsg);
}

}


TEST_GROUP(DynMessageTests) {
	void setup() {
		int level = 1;
		dynCommon_logSetup(stdLog, NULL, level);
		dynType_logSetup(stdLog, NULL, level);
		dynMessage_logSetup(stdLog, NULL, level);
	}
};


TEST(DynMessageTests, msg_test1) {
	msg_test1();
}

TEST(DynMessageTests, msg_test2) {
	msg_test2();
}

TEST(DynMessageTests, msg_test3) {
	msg_test3();
}
