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

SET(BUNDLE_SYMBOLICNAME "phase3")
SET(BUNDLE_VERSION "0.0.1")

bundle(phase3 SOURCES
        private/src/phase3_activator
        private/src/phase3_cmp
)

include_directories(
        private/include
        ../services
)

#target_link_libraries(fase2_a -Wl,--whole-archive dependency_manager2 -Wl,--no-whole-archive celix_framework)
#target_link_libraries(fase2_a celix_framework)
IF(APPLE)
target_link_libraries(phase3 celix_framework -Wl,-all_load dependency_manager)
else()
target_link_libraries(phase3 -Wl,--whole-archive dependency_manager -Wl,--no-whole-archive celix_framework)
ENDIF()
