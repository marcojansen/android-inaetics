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

# Include any dependencies generated for this target.
include dependency_manager/CMakeFiles/dm_shell.dir/depend.make

# Include the progress variables for this target.
include dependency_manager/CMakeFiles/dm_shell.dir/progress.make

# Include the compile flags for this target's objects.
include dependency_manager/CMakeFiles/dm_shell.dir/flags.make

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o: dependency_manager/CMakeFiles/dm_shell.dir/flags.make
dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o: ../dependency_manager/private/src/dm_shell_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_shell_activator.c

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_shell_activator.c > CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.i

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_shell_activator.c -o CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.s

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.requires

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.provides: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dm_shell.dir/build.make dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.provides

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.provides.build: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o: dependency_manager/CMakeFiles/dm_shell.dir/flags.make
dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o: ../dependency_manager/private/src/dm_shell_list_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_shell_list_command.c

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_shell_list_command.c > CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.i

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_shell_list_command.c -o CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.s

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.requires

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.provides: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dm_shell.dir/build.make dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.provides

dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.provides.build: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o

# Object files for target dm_shell
dm_shell_OBJECTS = \
"CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o" \
"CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o"

# External object files for target dm_shell
dm_shell_EXTERNAL_OBJECTS =

dependency_manager/libdm_shell.so: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o
dependency_manager/libdm_shell.so: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o
dependency_manager/libdm_shell.so: dependency_manager/CMakeFiles/dm_shell.dir/build.make
dependency_manager/libdm_shell.so: framework/libcelix_framework.so
dependency_manager/libdm_shell.so: utils/libcelix_utils.so
dependency_manager/libdm_shell.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/uuid/lib/libuuid.a
dependency_manager/libdm_shell.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/zlib/lib/libz.a
dependency_manager/libdm_shell.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/curl/lib/libcurl.a
dependency_manager/libdm_shell.so: dependency_manager/CMakeFiles/dm_shell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libdm_shell.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dm_shell.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/CPackConfig-dm_shell-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/dm_shell.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/dm_shell.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/ziptojar

# Rule to build all files generated by this target.
dependency_manager/CMakeFiles/dm_shell.dir/build: dependency_manager/libdm_shell.so
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/build

dependency_manager/CMakeFiles/dm_shell.dir/requires: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_activator.c.o.requires
dependency_manager/CMakeFiles/dm_shell.dir/requires: dependency_manager/CMakeFiles/dm_shell.dir/private/src/dm_shell_list_command.c.o.requires
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/requires

dependency_manager/CMakeFiles/dm_shell.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager && $(CMAKE_COMMAND) -P CMakeFiles/dm_shell.dir/cmake_clean.cmake
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/clean

dependency_manager/CMakeFiles/dm_shell.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/dependency_manager /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dependency_manager/CMakeFiles/dm_shell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependency_manager/CMakeFiles/dm_shell.dir/depend

