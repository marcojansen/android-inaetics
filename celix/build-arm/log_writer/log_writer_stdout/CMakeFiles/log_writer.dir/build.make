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

# Include any dependencies generated for this target.
include log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/depend.make

# Include the progress variables for this target.
include log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/progress.make

# Include the compile flags for this target's objects.
include log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/flags.make

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/flags.make
log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o: ../log_writer/log_writer/private/src/log_writer_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer/private/src/log_writer_activator.c

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer/private/src/log_writer_activator.c > CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.i

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer/private/src/log_writer_activator.c -o CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.s

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.requires:
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.requires

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.provides: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.requires
	$(MAKE) -f log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/build.make log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.provides.build
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.provides

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.provides.build: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/flags.make
log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o: ../log_writer/log_writer/private/src/log_writer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer/private/src/log_writer.c

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer/private/src/log_writer.c > CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.i

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer/private/src/log_writer.c -o CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.s

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.requires:
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.requires

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.provides: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.requires
	$(MAKE) -f log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/build.make log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.provides.build
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.provides

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.provides.build: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/flags.make
log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o: ../log_writer/log_writer_stdout/private/src/log_writer_stdout.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer_stdout/private/src/log_writer_stdout.c

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer_stdout/private/src/log_writer_stdout.c > CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.i

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer_stdout/private/src/log_writer_stdout.c -o CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.s

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.requires:
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.requires

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.provides: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.requires
	$(MAKE) -f log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/build.make log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.provides.build
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.provides

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.provides.build: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o

# Object files for target log_writer
log_writer_OBJECTS = \
"CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o" \
"CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o" \
"CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o"

# External object files for target log_writer
log_writer_EXTERNAL_OBJECTS =

log_writer/log_writer_stdout/liblog_writer.so: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o
log_writer/log_writer_stdout/liblog_writer.so: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o
log_writer/log_writer_stdout/liblog_writer.so: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o
log_writer/log_writer_stdout/liblog_writer.so: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/build.make
log_writer/log_writer_stdout/liblog_writer.so: framework/libcelix_framework.so
log_writer/log_writer_stdout/liblog_writer.so: utils/libcelix_utils.so
log_writer/log_writer_stdout/liblog_writer.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/uuid/lib/libuuid.a
log_writer/log_writer_stdout/liblog_writer.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/zlib/lib/libz.a
log_writer/log_writer_stdout/liblog_writer.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/curl/lib/libcurl.a
log_writer/log_writer_stdout/liblog_writer.so: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library liblog_writer.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log_writer.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/CPackConfig-log_writer-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/log_writer.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/log_writer.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/ziptojar

# Rule to build all files generated by this target.
log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/build: log_writer/log_writer_stdout/liblog_writer.so
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/build

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/requires: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer_activator.c.o.requires
log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/requires: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/__/log_writer/private/src/log_writer.c.o.requires
log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/requires: log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/private/src/log_writer_stdout.c.o.requires
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/requires

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout && $(CMAKE_COMMAND) -P CMakeFiles/log_writer.dir/cmake_clean.cmake
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/clean

log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/log_writer/log_writer_stdout /home/marcojansen/workspace/crosscompiling/celix/build-arm /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : log_writer/log_writer_stdout/CMakeFiles/log_writer.dir/depend

