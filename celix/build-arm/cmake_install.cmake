# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/examples/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/device_access/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_shell/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/shell_tui/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/shell/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/log_service/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/dependency_manager/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/launcher/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/framework/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/utils/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-arm/dfi/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/marcojansen/workspace/crosscompiling/celix/build-arm/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
