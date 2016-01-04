# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "org.apache.celix.calc.api.Calculator2_endpoint_install")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/./META-INF" TYPE FILE FILES "/home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/examples/calculator_endpoint2/MANIFEST.MF")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "org.apache.celix.calc.api.Calculator2_endpoint_install")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE SHARED_LIBRARY FILES "/home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./liborg.apache.celix.calc.api.Calculator2_endpoint.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./liborg.apache.celix.calc.api.Calculator2_endpoint.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./liborg.apache.celix.calc.api.Calculator2_endpoint.so")
    endif()
  endif()
endif()

