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
CMAKE_BINARY_DIR = /home/marcojansen/workspace/crosscompiling/celix/build-pc

# Include any dependencies generated for this target.
include remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/depend.make

# Include the progress variables for this target.
include remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/progress.make

# Include the compile flags for this target's objects.
include remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/flags.make

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/flags.make
remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o: ../remote_services/examples/calculator_proxy2/private/src/calculator_proxy_activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2/private/src/calculator_proxy_activator.c

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2/private/src/calculator_proxy_activator.c > CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.i

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2/private/src/calculator_proxy_activator.c -o CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.s

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.requires:
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.requires

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.provides: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.requires
	$(MAKE) -f remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/build.make remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.provides.build
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.provides

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.provides.build: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/flags.make
remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o: ../remote_services/examples/calculator_proxy2/private/src/calculator_proxy_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2/private/src/calculator_proxy_impl.c

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2/private/src/calculator_proxy_impl.c > CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.i

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2/private/src/calculator_proxy_impl.c -o CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.s

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.requires:
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.requires

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.provides: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.requires
	$(MAKE) -f remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/build.make remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.provides.build
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.provides

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.provides.build: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/flags.make
remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o: ../remote_services/remote_service_admin/private/src/remote_proxy_factory_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/remote_proxy_factory_impl.c

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/remote_proxy_factory_impl.c > CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.i

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/remote_services/remote_service_admin/private/src/remote_proxy_factory_impl.c -o CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.s

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.requires:
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.requires

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.provides: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.requires
	$(MAKE) -f remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/build.make remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.provides.build
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.provides

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.provides.build: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o

# Object files for target org.apache.celix.calc.api.Calculator2_proxy
org_apache_celix_calc_api_Calculator2_proxy_OBJECTS = \
"CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o" \
"CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o" \
"CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o"

# External object files for target org.apache.celix.calc.api.Calculator2_proxy
org_apache_celix_calc_api_Calculator2_proxy_EXTERNAL_OBJECTS =

remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/build.make
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: framework/libcelix_framework.so
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: /usr/local/lib/libjansson.so
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: utils/libcelix_utils.so
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: /usr/lib/x86_64-linux-gnu/libuuid.so
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: /usr/lib/x86_64-linux-gnu/libz.so
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: /usr/lib/x86_64-linux-gnu/libcurl.so
remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library liborg.apache.celix.calc.api.Calculator2_proxy.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/CPackConfig-org.apache.celix.calc.api.Calculator2_proxy-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/org.apache.celix.calc.api.Calculator2_proxy.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/org.apache.celix.calc.api.Calculator2_proxy.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/ziptojar

# Rule to build all files generated by this target.
remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/build: remote_services/examples/calculator_proxy2/liborg.apache.celix.calc.api.Calculator2_proxy.so
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/build

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/requires: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_activator.c.o.requires
remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/requires: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/private/src/calculator_proxy_impl.c.o.requires
remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/requires: remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/__/__/remote_service_admin/private/src/remote_proxy_factory_impl.c.o.requires
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/requires

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 && $(CMAKE_COMMAND) -P CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/cmake_clean.cmake
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/clean

remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/remote_services/examples/calculator_proxy2 /home/marcojansen/workspace/crosscompiling/celix/build-pc /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2 /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : remote_services/examples/calculator_proxy2/CMakeFiles/org.apache.celix.calc.api.Calculator2_proxy.dir/depend

