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
include dfi/CMakeFiles/celix_dfi.dir/depend.make

# Include the progress variables for this target.
include dfi/CMakeFiles/celix_dfi.dir/progress.make

# Include the compile flags for this target's objects.
include dfi/CMakeFiles/celix_dfi.dir/flags.make

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o: ../dfi/private/src/dyn_common.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_common.c

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_common.c > CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_common.c -o CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o: ../dfi/private/src/dyn_type.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_type.c

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_type.c > CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_type.c -o CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o: ../dfi/private/src/dyn_function.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_function.c

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_function.c > CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_function.c -o CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o: ../dfi/private/src/dyn_interface.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_interface.c

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_interface.c > CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_interface.c -o CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o: ../dfi/private/src/dyn_message.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_message.c

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_message.c > CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/dyn_message.c -o CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o: ../dfi/private/src/json_serializer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/json_serializer.c

dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/json_serializer.c > CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/json_serializer.c -o CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o: ../dfi/private/src/json_rpc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/json_rpc.c

dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/json_rpc.c > CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/json_rpc.c -o CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o: ../dfi/private/src/memstream/open_memstream.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/memstream/open_memstream.c

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/memstream/open_memstream.c > CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/memstream/open_memstream.c -o CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o: dfi/CMakeFiles/celix_dfi.dir/flags.make
dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o: ../dfi/private/src/memstream/fmemopen.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/memstream/fmemopen.c

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/memstream/fmemopen.c > CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.i

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dfi/private/src/memstream/fmemopen.c -o CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.s

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.requires:
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.requires

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.provides: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.requires
	$(MAKE) -f dfi/CMakeFiles/celix_dfi.dir/build.make dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.provides.build
.PHONY : dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.provides

dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.provides.build: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o

# Object files for target celix_dfi
celix_dfi_OBJECTS = \
"CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o" \
"CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o"

# External object files for target celix_dfi
celix_dfi_EXTERNAL_OBJECTS =

dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/build.make
dfi/libcelix_dfi.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/libffi/lib/libffi.a
dfi/libcelix_dfi.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/jansson/lib/libjansson.a
dfi/libcelix_dfi.so: dfi/CMakeFiles/celix_dfi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libcelix_dfi.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/celix_dfi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dfi/CMakeFiles/celix_dfi.dir/build: dfi/libcelix_dfi.so
.PHONY : dfi/CMakeFiles/celix_dfi.dir/build

dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_common.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_type.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_function.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_interface.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/dyn_message.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/json_serializer.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/json_rpc.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/open_memstream.c.o.requires
dfi/CMakeFiles/celix_dfi.dir/requires: dfi/CMakeFiles/celix_dfi.dir/private/src/memstream/fmemopen.c.o.requires
.PHONY : dfi/CMakeFiles/celix_dfi.dir/requires

dfi/CMakeFiles/celix_dfi.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi && $(CMAKE_COMMAND) -P CMakeFiles/celix_dfi.dir/cmake_clean.cmake
.PHONY : dfi/CMakeFiles/celix_dfi.dir/clean

dfi/CMakeFiles/celix_dfi.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/dfi /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/dfi/CMakeFiles/celix_dfi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dfi/CMakeFiles/celix_dfi.dir/depend
