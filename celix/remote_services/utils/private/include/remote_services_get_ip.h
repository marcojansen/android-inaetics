/**
 * Licensed under Apache License v2. See LICENSE for more information.
 */

#ifndef REMOTE_SERVICES_GET_IP_H_
#define REMOTE_SERVICES_GET_IP_H_
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <arpa/inet.h>
#include <sys/socket.h>
#include <netdb.h>

#include "celix_errno.h"

celix_status_t remote_services_getIpAddress(char* interface, char** ip);

#endif /* REMOTE_SERVICES_GET_IP_H_ */
