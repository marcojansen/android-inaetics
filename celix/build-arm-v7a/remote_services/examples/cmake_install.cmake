# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/celix")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_service/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_proxy/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_proxy2/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_shell/cmake_install.cmake")

endif()

