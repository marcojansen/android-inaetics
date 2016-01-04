# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix/dependency_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/marcojansen/workspace/crosscompiling/compiled/pc/celix")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dm_shell_install")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/./META-INF" TYPE FILE FILES "/home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager/MANIFEST.MF")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dm_shell_install")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "/home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager/libdm_shell.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./libdm_shell.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./libdm_shell.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./libdm_shell.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dependency_manager")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/celix/dependency_manager" TYPE FILE FILES
    "/home/marcojansen/workspace/crosscompiling/celix/dependency_manager/public/include/dm_activator_base.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dependency_manager/public/include/dm_component.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dependency_manager/public/include/dm_dependency_manager.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dependency_manager/public/include/dm_service_dependency.h"
    "/home/marcojansen/workspace/crosscompiling/celix/dependency_manager/public/include/dm_info.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dm_shell")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/celix/bundles" TYPE FILE FILES "/home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager/dm_shell.zip")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dependency_manager")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager/libdependency_manager.a")
endif()

