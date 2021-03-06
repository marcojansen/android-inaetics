# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

include_directories(
    private/include
    ${PROJECT_SOURCE_DIR}/utils/public/include
    ${PROJECT_SOURCE_DIR}/log_service/public/include
    ${PROJECT_SOURCE_DIR}/remote_services/utils/private/include
    ${PROJECT_SOURCE_DIR}/remote_services/remote_service_admin/public/include
    ${PROJECT_SOURCE_DIR}/remote_services/remote_service_admin/private/include
    ${PROJECT_SOURCE_DIR}/remote_services/remote_service_admin_http/private/include
    ${PROJECT_SOURCE_DIR}/dfi/public/include
    ${PROJECT_SOURCE_DIR}/remote_services/examples/calculator_service/public/include
)

SET_HEADER(BUNDLE_SYMBOLICNAME "apache_celix_remote_service_admin_dfi")
SET(BUNDLE_VERSION "0.0.1")
SET_HEADERS("Bundle-Name: Apache Celix Remote Service Admin Dynamic Function Interface (DFI)")

SET(GET_IP_SOURCE "")
if(HAVE_IFADDRS_H)
	SET(GET_IP_SOURCE ${PROJECT_SOURCE_DIR}/remote_services/utils/private/src/remote_services_get_ip_ifaddrs.c)
else()
	SET(GET_IP_SOURCE ${PROJECT_SOURCE_DIR}/remote_services/utils/private/src/remote_services_get_ip.c)
endif()

bundle(remote_service_admin_dfi SOURCES
    private/src/remote_service_admin_dfi.c
    private/src/remote_service_admin_activator.c
    private/src/export_registration_dfi.c
    private/src/import_registration_dfi.c

    ${PROJECT_SOURCE_DIR}/remote_services/remote_service_admin/private/src/endpoint_description.c
    ${GET_IP_SOURCE}
    ${PROJECT_SOURCE_DIR}/remote_services/utils/private/src/civetweb.c
    ${PROJECT_SOURCE_DIR}/log_service/public/src/log_helper.c
)
target_link_libraries(remote_service_admin_dfi celix_framework celix_utils celix_dfi ${CURL_LIBRARIES} ${JANSSON_LIBRARIES} ${UUID_LIBRARIES} ${FFI_LIBRARIES})

install_bundle(remote_service_admin_dfi)
