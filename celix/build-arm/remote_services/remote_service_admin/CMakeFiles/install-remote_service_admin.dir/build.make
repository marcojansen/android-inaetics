# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marcojansen/workspace/crosscompiling/celix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marcojansen/workspace/crosscompiling/celix/build-arm

# Utility rule file for install-remote_service_admin.

# Include the progress variables for this target.
include remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/progress.make

remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/remote_service_admin && /usr/bin/cmake -DCOMPONENT=remote_service_admin -P /home/marcojansen/workspace/crosscompiling/celix/build-arm/cmake_install.cmake

install-remote_service_admin: remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin
install-remote_service_admin: remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/build.make
.PHONY : install-remote_service_admin

# Rule to build all files generated by this target.
remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/build: install-remote_service_admin
.PHONY : remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/build

remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/remote_service_admin && $(CMAKE_COMMAND) -P CMakeFiles/install-remote_service_admin.dir/cmake_clean.cmake
.PHONY : remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/clean

remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin /home/marcojansen/workspace/crosscompiling/celix/build-arm /home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/remote_service_admin /home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : remote_services/remote_service_admin/CMakeFiles/install-remote_service_admin.dir/depend

