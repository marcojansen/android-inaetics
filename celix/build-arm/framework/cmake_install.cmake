# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix/framework

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "framework")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/marcojansen/workspace/crosscompiling/celix/build-arm/framework/libcelix_framework.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcelix_framework.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcelix_framework.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcelix_framework.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "framework")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/celix" TYPE FILE FILES
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/framework_exports.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/framework_listener.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/wire.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_context.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_listener.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/celix_launcher.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/module.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/listener_hook_service.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/archive.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/utils.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_event.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/manifest.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_archive.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_event.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/version.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_revision.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_state.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/celixbool.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_factory.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/constants.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/filter.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_tracker_customizer.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle_activator.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/version_range.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/capability.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/framework.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/framework_event.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/celix_log.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_registry.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_registration.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/properties.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_listener.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_reference.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/requirement.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/service_tracker.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/celix_errno.h"
    "/home/marcojansen/workspace/crosscompiling/celix/framework/public/include/bundle.h"
    "/home/marcojansen/workspace/crosscompiling/celix/build-arm/config.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "framework")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/celix/cmake/modules" TYPE DIRECTORY FILES "/home/marcojansen/workspace/crosscompiling/celix/cmake/")
endif()

