/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *  KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
/*
 * endpoint_discovery_server.c
 *
 * \date		Aug 12, 2014
 * \author		<a href="mailto:dev@celix.apache.org">Apache Celix Project Team</a>
 * \copyright	Apache License, Version 2.0
 */
#include <stdlib.h>
#include <string.h>
#include <arpa/inet.h>
#include <netdb.h>

#include "remote_services_get_ip.h"
#include "civetweb.h"
#include "celix_errno.h"
#include "utils.h"
#include "log_helper.h"
#include "discovery.h"
#include "discovery_impl.h"

#include "endpoint_descriptor_writer.h"

// defines how often the webserver is restarted (with an increased port number)
#define MAX_NUMBER_OF_RESTARTS 	5
#define DEFAULT_SERVER_THREADS "1"

#define CIVETWEB_REQUEST_NOT_HANDLED 0
#define CIVETWEB_REQUEST_HANDLED 1

static const char *response_headers =
  "HTTP/1.1 200 OK\r\n"
  "Cache: no-cache\r\n"
  "Content-Type: application/xml;charset=utf-8\r\n"
  "\r\n";

struct endpoint_discovery_server {
	log_helper_pt* loghelper;
    hash_map_pt entries; // key = endpointId, value = endpoint_descriptor_pt

    celix_thread_mutex_t serverLock;

    const char* path;
    const char *port;
    const char* ip;
    struct mg_context* ctx;
};

// Forward declarations...
static int endpointDiscoveryServer_callback(struct mg_connection *conn);
static char* format_path(char* path);


celix_status_t endpointDiscoveryServer_create(discovery_pt discovery, bundle_context_pt context, endpoint_discovery_server_pt *server) {
	celix_status_t status;

	char *port = 0;
	char *ip = NULL;
	char *detectedIp = NULL;
	char *path = NULL;

	*server = malloc(sizeof(struct endpoint_discovery_server));
	if (!*server) {
		return CELIX_ENOMEM;
	}

	(*server)->loghelper = &discovery->loghelper;
	(*server)->entries = hashMap_create(&utils_stringHash, NULL, &utils_stringEquals, NULL);
	if (!(*server)->entries) {
		return CELIX_ENOMEM;
	}

	status = celixThreadMutex_create(&(*server)->serverLock, NULL);
	if (status != CELIX_SUCCESS) {
		return CELIX_BUNDLE_EXCEPTION;
	}

	bundleContext_getProperty(context, DISCOVERY_SERVER_IP, &ip);
	if (ip == NULL) {
		char *interface = NULL;

		bundleContext_getProperty(context, DISCOVERY_SERVER_INTERFACE, &interface);
		if ((interface != NULL) && (remote_services_getIpAddress(interface, &detectedIp) != CELIX_SUCCESS)) {
			logHelper_log(*(*server)->loghelper, OSGI_LOGSERVICE_WARNING, "Could not retrieve IP adress for interface %s", interface);
		}

		if (detectedIp == NULL) {
			remote_services_getIpAddress(NULL, &detectedIp);
		}

		ip = detectedIp;
	}

	if (ip != NULL) {
		logHelper_log(*(*server)->loghelper, OSGI_LOGSERVICE_INFO, "Using %s for service annunciation", ip);
		(*server)->ip = strdup(ip);
	}
	else {
		logHelper_log(*(*server)->loghelper, OSGI_LOGSERVICE_WARNING, "No IP address for service annunciation set. Using %s", DEFAULT_SERVER_IP);
		(*server)->ip = strdup((char*) DEFAULT_SERVER_IP);
	}

	if (detectedIp != NULL) {
		free(detectedIp);
	}

	bundleContext_getProperty(context, DISCOVERY_SERVER_PORT, &port);
	if (port == NULL) {
		port = DEFAULT_SERVER_PORT;
	}

	bundleContext_getProperty(context, DISCOVERY_SERVER_PATH, &path);
	if (path == NULL) {
		path = DEFAULT_SERVER_PATH;
	}

	(*server)->path = format_path(path);

	const struct mg_callbacks callbacks = {
		.begin_request = endpointDiscoveryServer_callback,
	};

	unsigned int port_counter = 0;

	do {
		char newPort[10];
		const char *options[] = {
			"listening_ports", port,
			"num_threads", DEFAULT_SERVER_THREADS,
			NULL
		};

		(*server)->ctx = mg_start(&callbacks, (*server), options);

		if ((*server)->ctx != NULL)
		{
			logHelper_log(discovery->loghelper, OSGI_LOGSERVICE_INFO, "Starting discovery server on port %s...", port);
		}
		else {
			errno = 0;
	        char* endptr = port;
	        long currentPort = strtol(port, &endptr, 10);

	        if (*endptr || errno != 0) {
	            currentPort = strtol(DEFAULT_SERVER_PORT, NULL, 10);
	        }

	        port_counter++;
			snprintf(&newPort[0], 10,  "%ld", (currentPort+1));

			logHelper_log(discovery->loghelper, OSGI_LOGSERVICE_ERROR, "Error while starting discovery server on port %s - retrying on port %s...", port, newPort);
			port = newPort;

		}

	} while(((*server)->ctx == NULL) && (port_counter < MAX_NUMBER_OF_RESTARTS));

	(*server)->port = strdup(port);

	return status;
}

celix_status_t endpointDiscoveryServer_getUrl(endpoint_discovery_server_pt server, char* url)
{
	celix_status_t status = CELIX_BUNDLE_EXCEPTION;

	if (server->ip && server->port && server->path) {
		sprintf(url, "http://%s:%s/%s", server->ip, server->port, server->path);
		status = CELIX_SUCCESS;
	}

	return status;
}

celix_status_t endpointDiscoveryServer_destroy(endpoint_discovery_server_pt server) {
	celix_status_t status;

	// stop & block until the actual server is shut down...
	if (server->ctx != NULL) {
		mg_stop(server->ctx);
		server->ctx = NULL;
	}

	status = celixThreadMutex_lock(&server->serverLock);

	hashMap_destroy(server->entries, true /* freeKeys */, false /* freeValues */);

	status = celixThreadMutex_unlock(&server->serverLock);
	status = celixThreadMutex_destroy(&server->serverLock);

	free((void*) server->path);
	free((void*) server->port);
	free((void*) server->ip);

	free(server);

	return status;
}

celix_status_t endpointDiscoveryServer_addEndpoint(endpoint_discovery_server_pt server, endpoint_description_pt endpoint) {
	celix_status_t status;

	status = celixThreadMutex_lock(&server->serverLock);
	if (status != CELIX_SUCCESS) {
		return CELIX_BUNDLE_EXCEPTION;
	}

	// create a local copy of the endpointId which we can control...
	char* endpointId = strdup(endpoint->id);
	endpoint_description_pt cur_value = hashMap_get(server->entries, endpointId);
	if (!cur_value) {
		logHelper_log(*server->loghelper, OSGI_LOGSERVICE_INFO, "exposing new endpoint \"%s\"...", endpointId);

		hashMap_put(server->entries, endpointId, endpoint);
	}

	status = celixThreadMutex_unlock(&server->serverLock);
	if (status != CELIX_SUCCESS) {
		return CELIX_BUNDLE_EXCEPTION;
	}

	return status;
}

celix_status_t endpointDiscoveryServer_removeEndpoint(endpoint_discovery_server_pt server, endpoint_description_pt endpoint) {
	celix_status_t status;

	status = celixThreadMutex_lock(&server->serverLock);
	if (status != CELIX_SUCCESS) {
		return CELIX_BUNDLE_EXCEPTION;
	}

	hash_map_entry_pt entry = hashMap_getEntry(server->entries, endpoint->id);
	if (entry) {
		char* key = hashMapEntry_getKey(entry);

		logHelper_log(*server->loghelper, OSGI_LOGSERVICE_INFO, "removing endpoint \"%s\"...\n", key);

		hashMap_remove(server->entries, key);

		// we've made this key, see _addEnpoint above...
		free((void*) key);
	}

	status = celixThreadMutex_unlock(&server->serverLock);
	if (status != CELIX_SUCCESS) {
		return CELIX_BUNDLE_EXCEPTION;
	}

	return status;
}

static char* format_path(char* path) {
	char* result = strdup(utils_stringTrim(path));
	// check whether the path starts with a leading slash...
	if (result[0] != '/') {
		size_t len = strlen(result);
		result = realloc(result, len + 2);
		memmove(result + 1, result, len);
		result[0] = '/';
		result[len + 1] = 0;
	}
	return result;
}

static celix_status_t endpointDiscoveryServer_getEndpoints(endpoint_discovery_server_pt server, const char* the_endpoint_id, array_list_pt *endpoints) {
	celix_status_t status;

	status = arrayList_create(endpoints);
	if (status != CELIX_SUCCESS) {
		return CELIX_ENOMEM;
	}


	hash_map_iterator_pt iter = hashMapIterator_create(server->entries);
	while (hashMapIterator_hasNext(iter)) {
		hash_map_entry_pt entry = hashMapIterator_nextEntry(iter);

		char* endpoint_id = hashMapEntry_getKey(entry);
		if (the_endpoint_id == NULL || strcmp(the_endpoint_id, endpoint_id) == 0) {
			endpoint_description_pt endpoint = hashMapEntry_getValue(entry);

			arrayList_add(*endpoints, endpoint);
		}
	}
	hashMapIterator_destroy(iter);

	return status;
}

static int endpointDiscoveryServer_writeEndpoints(struct mg_connection* conn, array_list_pt endpoints) {
	celix_status_t status;

    endpoint_descriptor_writer_pt writer = NULL;
    status = endpointDescriptorWriter_create(&writer);
    if (status != CELIX_SUCCESS) {
    	return CIVETWEB_REQUEST_NOT_HANDLED;
    }

    char *buffer = NULL;
    status = endpointDescriptorWriter_writeDocument(writer, endpoints, &buffer);
    if (buffer) {
    	mg_write(conn, response_headers, strlen(response_headers));
    	mg_write(conn, buffer, strlen(buffer));
    }

    status = endpointDescriptorWriter_destroy(writer);

	return CIVETWEB_REQUEST_HANDLED;
}

// returns all endpoints as XML...
static int endpointDiscoveryServer_returnAllEndpoints(endpoint_discovery_server_pt server, struct mg_connection* conn) {
	int status = CIVETWEB_REQUEST_NOT_HANDLED;

	array_list_pt endpoints = NULL;

    if (celixThreadMutex_lock(&server->serverLock) == CELIX_SUCCESS) {
        endpointDiscoveryServer_getEndpoints(server, NULL, &endpoints);
        if (endpoints) {
            status = endpointDiscoveryServer_writeEndpoints(conn, endpoints);

            arrayList_destroy(endpoints);
        }


        celixThreadMutex_unlock(&server->serverLock);
    }

	return status;
}

// returns a single endpoint as XML...
static int endpointDiscoveryServer_returnEndpoint(endpoint_discovery_server_pt server, struct mg_connection* conn, const char* endpoint_id) {
	int status = CIVETWEB_REQUEST_NOT_HANDLED;

	array_list_pt endpoints = NULL;

	if (celixThreadMutex_lock(&server->serverLock) == CELIX_SUCCESS) {
        endpointDiscoveryServer_getEndpoints(server, endpoint_id, &endpoints);
        if (endpoints) {
            status = endpointDiscoveryServer_writeEndpoints(conn, endpoints);

            arrayList_destroy(endpoints);
        }

        celixThreadMutex_unlock(&server->serverLock);
	}

	return status;
}

static int endpointDiscoveryServer_callback(struct mg_connection* conn) {
	int status = CIVETWEB_REQUEST_NOT_HANDLED;

	const struct mg_request_info *request_info = mg_get_request_info(conn);
	if (request_info->uri != NULL && strcmp("GET", request_info->request_method) == 0) {
		endpoint_discovery_server_pt server = request_info->user_data;

		const char *uri = request_info->uri;
		const size_t path_len = strlen(server->path);
		const size_t uri_len = strlen(uri);

		if (strncmp(server->path, uri, strlen(server->path)) == 0) {
			// Be lenient when it comes to the trailing slash...
			if (path_len == uri_len || (uri_len == (path_len + 1) && uri[path_len] == '/')) {
				status = endpointDiscoveryServer_returnAllEndpoints(server, conn);
			} else {
				const char* endpoint_id = uri + path_len + 1; // right after the slash...

				status = endpointDiscoveryServer_returnEndpoint(server, conn, endpoint_id);
			}
		}
	}

	return status;
}