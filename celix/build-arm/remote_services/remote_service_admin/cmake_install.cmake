# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/marcojansen/workspace/crosscompiling/compiled/arm/celix")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "remote_service_admin")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/celix/remote_service_admin" TYPE FILE FILES
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/remote_endpoint_impl.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/remote_endpoint.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/remote_proxy.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/remote_service_admin.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/export_registration.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/import_registration.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/endpoint_description.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/endpoint_listener.h"
    "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/remote_constants.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "remote_service_admin")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/celix/remote_service_admin" TYPE FILE FILES "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/remote_proxy_factory_impl.c")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "remote_service_admin")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/celix/endpoint_listener" TYPE FILE FILES "/home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/public/include/endpoint_listener.h")
endif()

