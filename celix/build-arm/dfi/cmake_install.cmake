# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix/dfi

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/marcojansen/workspace/crosscompiling/celix/build-arm/dfi/libcelix_dfi.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcelix_dfi.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcelix_dfi.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcelix_dfi.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "framework")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/celix/dfi" TYPE FILE FILES
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/dyn_type.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/json_serializer.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/json_rpc.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/dyn_message.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/dyn_function.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/dyn_interface.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/dfi_log_util.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/dyn_common.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/memstream/open_memstream.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dfi/public/include/memstream/fmemopen.h"
    )
endif()

