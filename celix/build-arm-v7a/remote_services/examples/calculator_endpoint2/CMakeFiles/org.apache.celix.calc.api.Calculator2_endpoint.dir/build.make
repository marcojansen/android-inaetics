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
include remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/depend.make

# Include the progress variables for this target.
include remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/progress.make

# Include the compile flags for this target's objects.
include remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/flags.make

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/flags.make
remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o: ../remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_activator.c

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_activator.c > CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.i

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_activator.c -o CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.s

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.requires:
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.requires

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.provides: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.requires
	$(MAKE) -f remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/build.make remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.provides.build
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.provides

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.provides.build: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/flags.make
remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o: ../remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_impl.c

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_impl.c > CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.i

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /home/marcojansen/workspace/crosscompiling/toolchain/bin/arm-linux-androideabi-gcc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2/private/src/calculator_endpoint_impl.c -o CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.s

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.requires:
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.requires

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.provides: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.requires
	$(MAKE) -f remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/build.make remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.provides.build
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.provides

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.provides.build: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o

# Object files for target org.apache.celix.calc.api.Calculator2_endpoint
org_apache_celix_calc_api_Calculator2_endpoint_OBJECTS = \
"CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o" \
"CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o"

# External object files for target org.apache.celix.calc.api.Calculator2_endpoint
org_apache_celix_calc_api_Calculator2_endpoint_EXTERNAL_OBJECTS =

remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/build.make
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: framework/libcelix_framework.so
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/jansson/lib/libjansson.a
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: utils/libcelix_utils.so
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/uuid/lib/libuuid.a
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/zlib/lib/libz.a
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: /home/marcojansen/workspace/crosscompiling/compiled/arm-v7a/curl/lib/libcurl.a
remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library liborg.apache.celix.calc.api.Calculator2_endpoint.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/CPackConfig-org.apache.celix.calc.api.Calculator2_endpoint-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/org.apache.celix.calc.api.Calculator2_endpoint.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/org.apache.celix.calc.api.Calculator2_endpoint.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/ziptojar

# Rule to build all files generated by this target.
remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/build: remote_services/examples/calculator_endpoint2/liborg.apache.celix.calc.api.Calculator2_endpoint.so
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/build

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/requires: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_activator.c.o.requires
remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/requires: remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/private/src/calculator_endpoint_impl.c.o.requires
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/requires

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 && $(CMAKE_COMMAND) -P CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/cmake_clean.cmake
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/clean

remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_endpoint2 /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2 /home/marcojansen/workspace/crosscompiling/celix/build-arm-v7a/remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : remote_services/examples/calculator_endpoint2/CMakeFiles/org.apache.celix.calc.api.Calculator2_endpoint.dir/depend

