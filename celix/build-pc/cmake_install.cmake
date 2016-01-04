# Install script for directory: /home/marcojansen/workspace/crosscompiling/celix

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/examples/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/device_access/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/deployment_admin/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_shell/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/shell_tui/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/log_writer/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/log_service/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/launcher/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/framework/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/utils/cmake_install.cmake")
  include("/home/marcojansen/workspace/crosscompiling/celix/build-pc/dfi/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/marcojansen/workspace/crosscompiling/celix/build-pc/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
