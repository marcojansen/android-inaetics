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
include dependency_manager/CMakeFiles/dependency_manager.dir/depend.make

# Include the progress variables for this target.
include dependency_manager/CMakeFiles/dependency_manager.dir/progress.make

# Include the compile flags for this target's objects.
include dependency_manager/CMakeFiles/dependency_manager.dir/flags.make

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o: dependency_manager/CMakeFiles/dependency_manager.dir/flags.make
dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o: ../dependency_manager/private/src/dm_activator_base.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_activator_base.c

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_activator_base.c > CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.i

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_activator_base.c -o CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.s

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.requires

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.provides: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dependency_manager.dir/build.make dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.provides

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.provides.build: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o: dependency_manager/CMakeFiles/dependency_manager.dir/flags.make
dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o: ../dependency_manager/private/src/dm_component_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_component_impl.c

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_component_impl.c > CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.i

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_component_impl.c -o CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.s

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.requires

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.provides: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dependency_manager.dir/build.make dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.provides

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.provides.build: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o: dependency_manager/CMakeFiles/dependency_manager.dir/flags.make
dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o: ../dependency_manager/private/src/dm_service_dependency.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_service_dependency.c

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_service_dependency.c > CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.i

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_service_dependency.c -o CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.s

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.requires

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.provides: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dependency_manager.dir/build.make dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.provides

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.provides.build: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o: dependency_manager/CMakeFiles/dependency_manager.dir/flags.make
dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o: ../dependency_manager/private/src/dm_event.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_event.c

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dependency_manager.dir/private/src/dm_event.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_event.c > CMakeFiles/dependency_manager.dir/private/src/dm_event.c.i

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dependency_manager.dir/private/src/dm_event.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_event.c -o CMakeFiles/dependency_manager.dir/private/src/dm_event.c.s

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.requires

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.provides: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dependency_manager.dir/build.make dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.provides

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.provides.build: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o: dependency_manager/CMakeFiles/dependency_manager.dir/flags.make
dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o: ../dependency_manager/private/src/dm_dependency_manager_impl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_dependency_manager_impl.c

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_dependency_manager_impl.c > CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.i

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/dependency_manager/private/src/dm_dependency_manager_impl.c -o CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.s

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.requires:
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.requires

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.provides: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.requires
	$(MAKE) -f dependency_manager/CMakeFiles/dependency_manager.dir/build.make dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.provides.build
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.provides

dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.provides.build: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o

# Object files for target dependency_manager
dependency_manager_OBJECTS = \
"CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o" \
"CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o" \
"CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o" \
"CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o" \
"CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o"

# External object files for target dependency_manager
dependency_manager_EXTERNAL_OBJECTS =

dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o
dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o
dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o
dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o
dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o
dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/build.make
dependency_manager/libdependency_manager.a: dependency_manager/CMakeFiles/dependency_manager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libdependency_manager.a"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && $(CMAKE_COMMAND) -P CMakeFiles/dependency_manager.dir/cmake_clean_target.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dependency_manager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependency_manager/CMakeFiles/dependency_manager.dir/build: dependency_manager/libdependency_manager.a
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/build

dependency_manager/CMakeFiles/dependency_manager.dir/requires: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_activator_base.c.o.requires
dependency_manager/CMakeFiles/dependency_manager.dir/requires: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_component_impl.c.o.requires
dependency_manager/CMakeFiles/dependency_manager.dir/requires: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_service_dependency.c.o.requires
dependency_manager/CMakeFiles/dependency_manager.dir/requires: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_event.c.o.requires
dependency_manager/CMakeFiles/dependency_manager.dir/requires: dependency_manager/CMakeFiles/dependency_manager.dir/private/src/dm_dependency_manager_impl.c.o.requires
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/requires

dependency_manager/CMakeFiles/dependency_manager.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager && $(CMAKE_COMMAND) -P CMakeFiles/dependency_manager.dir/cmake_clean.cmake
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/clean

dependency_manager/CMakeFiles/dependency_manager.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/dependency_manager /home/marcojansen/workspace/crosscompiling/celix/build-pc /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager /home/marcojansen/workspace/crosscompiling/celix/build-pc/dependency_manager/CMakeFiles/dependency_manager.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependency_manager/CMakeFiles/dependency_manager.dir/depend
