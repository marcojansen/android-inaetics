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
include remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/depend.make

# Include the progress variables for this target.
include remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/progress.make

# Include the compile flags for this target's objects.
include remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o: ../remote_services/remote_service_admin_http/private/src/remote_service_admin_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http/private/src/remote_service_admin_impl.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http/private/src/remote_service_admin_impl.c > CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http/private/src/remote_service_admin_impl.c -o CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o: ../remote_services/remote_service_admin_http/private/src/remote_service_admin_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http/private/src/remote_service_admin_activator.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http/private/src/remote_service_admin_activator.c > CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http/private/src/remote_service_admin_activator.c -o CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o: ../remote_services/remote_service_admin/private/src/export_registration_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/export_registration_impl.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/export_registration_impl.c > CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/export_registration_impl.c -o CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o: ../remote_services/remote_service_admin/private/src/import_registration_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/import_registration_impl.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/import_registration_impl.c > CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/import_registration_impl.c -o CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o: ../remote_services/utils/private/src/civetweb.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/utils/private/src/civetweb.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/utils/private/src/civetweb.c > CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/utils/private/src/civetweb.c -o CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o: ../log_service/public/src/log_helper.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/public/src/log_helper.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/public/src/log_helper.c > CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/public/src/log_helper.c -o CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/flags.make
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o: ../remote_services/utils/private/src/remote_services_get_ip.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/utils/private/src/remote_services_get_ip.c

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/utils/private/src/remote_services_get_ip.c > CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.i

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/utils/private/src/remote_services_get_ip.c -o CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.s

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.requires:
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.provides: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.requires
	$(MAKE) -f remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.provides.build
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.provides

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.provides.build: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o

# Object files for target remote_service_admin_http
remote_service_admin_http_OBJECTS = \
"CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o" \
"CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o" \
"CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o" \
"CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o" \
"CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o" \
"CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o" \
"CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o"

# External object files for target remote_service_admin_http
remote_service_admin_http_EXTERNAL_OBJECTS =

remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build.make
remote_services/remote_service_admin_http/libremote_service_admin_http.so: framework/libcelix_framework.so
remote_services/remote_service_admin_http/libremote_service_admin_http.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/curl/lib/libcurl.a
remote_services/remote_service_admin_http/libremote_service_admin_http.so: utils/libcelix_utils.so
remote_services/remote_service_admin_http/libremote_service_admin_http.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/uuid/lib/libuuid.a
remote_services/remote_service_admin_http/libremote_service_admin_http.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/zlib/lib/libz.a
remote_services/remote_service_admin_http/libremote_service_admin_http.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/curl/lib/libcurl.a
remote_services/remote_service_admin_http/libremote_service_admin_http.so: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libremote_service_admin_http.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/remote_service_admin_http.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/CPackConfig-remote_service_admin_http-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/remote_service_admin_http.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/remote_service_admin_http.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/ziptojar

# Rule to build all files generated by this target.
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build: remote_services/remote_service_admin_http/libremote_service_admin_http.so
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/build

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_impl.c.o.requires
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/private/src/remote_service_admin_activator.c.o.requires
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/export_registration_impl.c.o.requires
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/remote_service_admin/private/src/import_registration_impl.c.o.requires
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/civetweb.c.o.requires
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/__/log_service/public/src/log_helper.c.o.requires
remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires: remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/__/utils/private/src/remote_services_get_ip.c.o.requires
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/requires

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http && $(CMAKE_COMMAND) -P CMakeFiles/remote_service_admin_http.dir/cmake_clean.cmake
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/clean

remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin_http /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : remote_services/remote_service_admin_http/CMakeFiles/remote_service_admin_http.dir/depend

