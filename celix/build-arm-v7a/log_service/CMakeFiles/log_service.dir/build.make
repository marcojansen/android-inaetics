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
include log_service/CMakeFiles/log_service.dir/depend.make

# Include the progress variables for this target.
include log_service/CMakeFiles/log_service.dir/progress.make

# Include the compile flags for this target's objects.
include log_service/CMakeFiles/log_service.dir/flags.make

log_service/CMakeFiles/log_service.dir/private/src/log.c.o: log_service/CMakeFiles/log_service.dir/flags.make
log_service/CMakeFiles/log_service.dir/private/src/log.c.o: ../log_service/private/src/log.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_service/CMakeFiles/log_service.dir/private/src/log.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_service.dir/private/src/log.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log.c

log_service/CMakeFiles/log_service.dir/private/src/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_service.dir/private/src/log.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log.c > CMakeFiles/log_service.dir/private/src/log.c.i

log_service/CMakeFiles/log_service.dir/private/src/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_service.dir/private/src/log.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log.c -o CMakeFiles/log_service.dir/private/src/log.c.s

log_service/CMakeFiles/log_service.dir/private/src/log.c.o.requires:
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log.c.o.requires

log_service/CMakeFiles/log_service.dir/private/src/log.c.o.provides: log_service/CMakeFiles/log_service.dir/private/src/log.c.o.requires
	$(MAKE) -f log_service/CMakeFiles/log_service.dir/build.make log_service/CMakeFiles/log_service.dir/private/src/log.c.o.provides.build
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log.c.o.provides

log_service/CMakeFiles/log_service.dir/private/src/log.c.o.provides.build: log_service/CMakeFiles/log_service.dir/private/src/log.c.o

log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o: log_service/CMakeFiles/log_service.dir/flags.make
log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o: ../log_service/private/src/log_entry.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_service.dir/private/src/log_entry.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_entry.c

log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_service.dir/private/src/log_entry.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_entry.c > CMakeFiles/log_service.dir/private/src/log_entry.c.i

log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_service.dir/private/src/log_entry.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_entry.c -o CMakeFiles/log_service.dir/private/src/log_entry.c.s

log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.requires:
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.requires

log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.provides: log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.requires
	$(MAKE) -f log_service/CMakeFiles/log_service.dir/build.make log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.provides.build
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.provides

log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.provides.build: log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o

log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o: log_service/CMakeFiles/log_service.dir/flags.make
log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o: ../log_service/private/src/log_factory.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_service.dir/private/src/log_factory.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_factory.c

log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_service.dir/private/src/log_factory.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_factory.c > CMakeFiles/log_service.dir/private/src/log_factory.c.i

log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_service.dir/private/src/log_factory.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_factory.c -o CMakeFiles/log_service.dir/private/src/log_factory.c.s

log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.requires:
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.requires

log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.provides: log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.requires
	$(MAKE) -f log_service/CMakeFiles/log_service.dir/build.make log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.provides.build
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.provides

log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.provides.build: log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o

log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o: log_service/CMakeFiles/log_service.dir/flags.make
log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o: ../log_service/private/src/log_service_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_service.dir/private/src/log_service_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_service_impl.c

log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_service.dir/private/src/log_service_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_service_impl.c > CMakeFiles/log_service.dir/private/src/log_service_impl.c.i

log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_service.dir/private/src/log_service_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_service_impl.c -o CMakeFiles/log_service.dir/private/src/log_service_impl.c.s

log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.requires:
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.requires

log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.provides: log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.requires
	$(MAKE) -f log_service/CMakeFiles/log_service.dir/build.make log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.provides.build
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.provides

log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.provides.build: log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o

log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o: log_service/CMakeFiles/log_service.dir/flags.make
log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o: ../log_service/private/src/log_service_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_service.dir/private/src/log_service_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_service_activator.c

log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_service.dir/private/src/log_service_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_service_activator.c > CMakeFiles/log_service.dir/private/src/log_service_activator.c.i

log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_service.dir/private/src/log_service_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_service_activator.c -o CMakeFiles/log_service.dir/private/src/log_service_activator.c.s

log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.requires:
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.requires

log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.provides: log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.requires
	$(MAKE) -f log_service/CMakeFiles/log_service.dir/build.make log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.provides.build
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.provides

log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.provides.build: log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o

log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o: log_service/CMakeFiles/log_service.dir/flags.make
log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o: ../log_service/private/src/log_reader_service_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_reader_service_impl.c

log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_reader_service_impl.c > CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.i

log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/private/src/log_reader_service_impl.c -o CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.s

log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.requires:
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.requires

log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.provides: log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.requires
	$(MAKE) -f log_service/CMakeFiles/log_service.dir/build.make log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.provides.build
.PHONY : log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.provides

log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.provides.build: log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o

# Object files for target log_service
log_service_OBJECTS = \
"CMakeFiles/log_service.dir/private/src/log.c.o" \
"CMakeFiles/log_service.dir/private/src/log_entry.c.o" \
"CMakeFiles/log_service.dir/private/src/log_factory.c.o" \
"CMakeFiles/log_service.dir/private/src/log_service_impl.c.o" \
"CMakeFiles/log_service.dir/private/src/log_service_activator.c.o" \
"CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o"

# External object files for target log_service
log_service_EXTERNAL_OBJECTS =

log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/private/src/log.c.o
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/build.make
log_service/liblog_service.so: framework/libcelix_framework.so
log_service/liblog_service.so: utils/libcelix_utils.so
log_service/liblog_service.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/uuid/lib/libuuid.a
log_service/liblog_service.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/zlib/lib/libz.a
log_service/liblog_service.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/curl/lib/libcurl.a
log_service/liblog_service.so: log_service/CMakeFiles/log_service.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library liblog_service.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log_service.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/CPackConfig-log_service-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/log_service.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/log_service.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/ziptojar

# Rule to build all files generated by this target.
log_service/CMakeFiles/log_service.dir/build: log_service/liblog_service.so
.PHONY : log_service/CMakeFiles/log_service.dir/build

log_service/CMakeFiles/log_service.dir/requires: log_service/CMakeFiles/log_service.dir/private/src/log.c.o.requires
log_service/CMakeFiles/log_service.dir/requires: log_service/CMakeFiles/log_service.dir/private/src/log_entry.c.o.requires
log_service/CMakeFiles/log_service.dir/requires: log_service/CMakeFiles/log_service.dir/private/src/log_factory.c.o.requires
log_service/CMakeFiles/log_service.dir/requires: log_service/CMakeFiles/log_service.dir/private/src/log_service_impl.c.o.requires
log_service/CMakeFiles/log_service.dir/requires: log_service/CMakeFiles/log_service.dir/private/src/log_service_activator.c.o.requires
log_service/CMakeFiles/log_service.dir/requires: log_service/CMakeFiles/log_service.dir/private/src/log_reader_service_impl.c.o.requires
.PHONY : log_service/CMakeFiles/log_service.dir/requires

log_service/CMakeFiles/log_service.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service && $(CMAKE_COMMAND) -P CMakeFiles/log_service.dir/cmake_clean.cmake
.PHONY : log_service/CMakeFiles/log_service.dir/clean

log_service/CMakeFiles/log_service.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/log_service /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/log_service/CMakeFiles/log_service.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : log_service/CMakeFiles/log_service.dir/depend
