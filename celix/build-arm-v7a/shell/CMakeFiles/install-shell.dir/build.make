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
CMAKE_BINARY_DIR = /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a

# Utility rule file for install-shell.

# Include the progress variables for this target.
include shell/CMakeFiles/install-shell.dir/progress.make

shell/CMakeFiles/install-shell:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/shell && /usr/bin/cmake -DCOMPONENT=shell -P /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/cmake_install.cmake

install-shell: shell/CMakeFiles/install-shell
install-shell: shell/CMakeFiles/install-shell.dir/build.make
.PHONY : install-shell

# Rule to build all files generated by this target.
shell/CMakeFiles/install-shell.dir/build: install-shell
.PHONY : shell/CMakeFiles/install-shell.dir/build

shell/CMakeFiles/install-shell.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/shell && $(CMAKE_COMMAND) -P CMakeFiles/install-shell.dir/cmake_clean.cmake
.PHONY : shell/CMakeFiles/install-shell.dir/clean

shell/CMakeFiles/install-shell.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/shell /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/shell /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/shell/CMakeFiles/install-shell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shell/CMakeFiles/install-shell.dir/depend

