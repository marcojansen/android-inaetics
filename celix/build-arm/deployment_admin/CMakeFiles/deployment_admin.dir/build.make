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
include deployment_admin/CMakeFiles/deployment_admin.dir/depend.make

# Include the progress variables for this target.
include deployment_admin/CMakeFiles/deployment_admin.dir/progress.make

# Include the compile flags for this target's objects.
include deployment_admin/CMakeFiles/deployment_admin.dir/flags.make

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o: ../deployment_admin/private/src/deployment_package.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_package.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_package.c > CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_package.c -o CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o: ../deployment_admin/private/src/deployment_admin.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_admin.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_admin.c > CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_admin.c -o CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o: ../deployment_admin/private/src/deployment_admin_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_admin_activator.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_admin_activator.c > CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/deployment_admin_activator.c -o CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o: ../deployment_admin/private/src/ioapi.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/ioapi.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/ioapi.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/ioapi.c > CMakeFiles/deployment_admin.dir/private/src/ioapi.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/ioapi.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/ioapi.c -o CMakeFiles/deployment_admin.dir/private/src/ioapi.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o: ../deployment_admin/private/src/miniunz.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/miniunz.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/miniunz.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/miniunz.c > CMakeFiles/deployment_admin.dir/private/src/miniunz.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/miniunz.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/miniunz.c -o CMakeFiles/deployment_admin.dir/private/src/miniunz.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o: ../deployment_admin/private/src/unzip.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/unzip.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/unzip.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/unzip.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/unzip.c > CMakeFiles/deployment_admin.dir/private/src/unzip.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/unzip.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/unzip.c -o CMakeFiles/deployment_admin.dir/private/src/unzip.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o: ../deployment_admin/private/src/log.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/log.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/log.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log.c > CMakeFiles/deployment_admin.dir/private/src/log.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/log.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log.c -o CMakeFiles/deployment_admin.dir/private/src/log.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o: ../deployment_admin/private/src/log_store.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/log_store.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log_store.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/log_store.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log_store.c > CMakeFiles/deployment_admin.dir/private/src/log_store.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/log_store.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log_store.c -o CMakeFiles/deployment_admin.dir/private/src/log_store.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o: deployment_admin/CMakeFiles/deployment_admin.dir/flags.make
deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o: ../deployment_admin/private/src/log_sync.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log_sync.c

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/deployment_admin.dir/private/src/log_sync.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log_sync.c > CMakeFiles/deployment_admin.dir/private/src/log_sync.c.i

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/deployment_admin.dir/private/src/log_sync.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/deployment_admin/private/src/log_sync.c -o CMakeFiles/deployment_admin.dir/private/src/log_sync.c.s

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.requires:
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.requires

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.provides: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.requires
	$(MAKE) -f deployment_admin/CMakeFiles/deployment_admin.dir/build.make deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.provides.build
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.provides

deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.provides.build: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o

# Object files for target deployment_admin
deployment_admin_OBJECTS = \
"CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/unzip.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/log.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/log_store.c.o" \
"CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o"

# External object files for target deployment_admin
deployment_admin_EXTERNAL_OBJECTS =

deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/build.make
deployment_admin/libdeployment_admin.so: framework/libcelix_framework.so
deployment_admin/libdeployment_admin.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/curl/lib/libcurl.a
deployment_admin/libdeployment_admin.so: utils/libcelix_utils.so
deployment_admin/libdeployment_admin.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/uuid/lib/libuuid.a
deployment_admin/libdeployment_admin.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/zlib/lib/libz.a
deployment_admin/libdeployment_admin.so: /home/marcojansen/workspace/crosscompiling/compiled/arm/curl/lib/libcurl.a
deployment_admin/libdeployment_admin.so: deployment_admin/CMakeFiles/deployment_admin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libdeployment_admin.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/deployment_admin.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/CPackConfig-deployment_admin-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/deployment_admin.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/deployment_admin.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/ziptojar

# Rule to build all files generated by this target.
deployment_admin/CMakeFiles/deployment_admin.dir/build: deployment_admin/libdeployment_admin.so
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/build

deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_package.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/deployment_admin_activator.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/ioapi.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/miniunz.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/unzip.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_store.c.o.requires
deployment_admin/CMakeFiles/deployment_admin.dir/requires: deployment_admin/CMakeFiles/deployment_admin.dir/private/src/log_sync.c.o.requires
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/requires

deployment_admin/CMakeFiles/deployment_admin.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin && $(CMAKE_COMMAND) -P CMakeFiles/deployment_admin.dir/cmake_clean.cmake
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/clean

deployment_admin/CMakeFiles/deployment_admin.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/deployment_admin /home/marcojansen/workspace/crosscompiling/celix/build-arm /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin /home/marcojansen/workspace/crosscompiling/celix/build-arm/deployment_admin/CMakeFiles/deployment_admin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deployment_admin/CMakeFiles/deployment_admin.dir/depend

