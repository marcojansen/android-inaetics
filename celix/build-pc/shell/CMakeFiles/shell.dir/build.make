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
include shell/CMakeFiles/shell.dir/depend.make

# Include the progress variables for this target.
include shell/CMakeFiles/shell.dir/progress.make

# Include the compile flags for this target's objects.
include shell/CMakeFiles/shell.dir/flags.make

shell/CMakeFiles/shell.dir/private/src/activator.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/activator.c.o: ../shell/private/src/activator.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/activator.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/activator.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/activator.c

shell/CMakeFiles/shell.dir/private/src/activator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/activator.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/activator.c > CMakeFiles/shell.dir/private/src/activator.c.i

shell/CMakeFiles/shell.dir/private/src/activator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/activator.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/activator.c -o CMakeFiles/shell.dir/private/src/activator.c.s

shell/CMakeFiles/shell.dir/private/src/activator.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/activator.c.o.requires

shell/CMakeFiles/shell.dir/private/src/activator.c.o.provides: shell/CMakeFiles/shell.dir/private/src/activator.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/activator.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/activator.c.o.provides

shell/CMakeFiles/shell.dir/private/src/activator.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/activator.c.o

shell/CMakeFiles/shell.dir/private/src/shell.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/shell.c.o: ../shell/private/src/shell.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/shell.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/shell.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/shell.c

shell/CMakeFiles/shell.dir/private/src/shell.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/shell.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/shell.c > CMakeFiles/shell.dir/private/src/shell.c.i

shell/CMakeFiles/shell.dir/private/src/shell.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/shell.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/shell.c -o CMakeFiles/shell.dir/private/src/shell.c.s

shell/CMakeFiles/shell.dir/private/src/shell.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/shell.c.o.requires

shell/CMakeFiles/shell.dir/private/src/shell.c.o.provides: shell/CMakeFiles/shell.dir/private/src/shell.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/shell.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/shell.c.o.provides

shell/CMakeFiles/shell.dir/private/src/shell.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/shell.c.o

shell/CMakeFiles/shell.dir/private/src/lb_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/lb_command.c.o: ../shell/private/src/lb_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/lb_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/lb_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/lb_command.c

shell/CMakeFiles/shell.dir/private/src/lb_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/lb_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/lb_command.c > CMakeFiles/shell.dir/private/src/lb_command.c.i

shell/CMakeFiles/shell.dir/private/src/lb_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/lb_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/lb_command.c -o CMakeFiles/shell.dir/private/src/lb_command.c.s

shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/lb_command.c.o

shell/CMakeFiles/shell.dir/private/src/start_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/start_command.c.o: ../shell/private/src/start_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/start_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/start_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/start_command.c

shell/CMakeFiles/shell.dir/private/src/start_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/start_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/start_command.c > CMakeFiles/shell.dir/private/src/start_command.c.i

shell/CMakeFiles/shell.dir/private/src/start_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/start_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/start_command.c -o CMakeFiles/shell.dir/private/src/start_command.c.s

shell/CMakeFiles/shell.dir/private/src/start_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/start_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/start_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/start_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/start_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/start_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/start_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/start_command.c.o

shell/CMakeFiles/shell.dir/private/src/stop_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/stop_command.c.o: ../shell/private/src/stop_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/stop_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/stop_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/stop_command.c

shell/CMakeFiles/shell.dir/private/src/stop_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/stop_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/stop_command.c > CMakeFiles/shell.dir/private/src/stop_command.c.i

shell/CMakeFiles/shell.dir/private/src/stop_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/stop_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/stop_command.c -o CMakeFiles/shell.dir/private/src/stop_command.c.s

shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/stop_command.c.o

shell/CMakeFiles/shell.dir/private/src/install_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/install_command.c.o: ../shell/private/src/install_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/install_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/install_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/install_command.c

shell/CMakeFiles/shell.dir/private/src/install_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/install_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/install_command.c > CMakeFiles/shell.dir/private/src/install_command.c.i

shell/CMakeFiles/shell.dir/private/src/install_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/install_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/install_command.c -o CMakeFiles/shell.dir/private/src/install_command.c.s

shell/CMakeFiles/shell.dir/private/src/install_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/install_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/install_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/install_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/install_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/install_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/install_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/install_command.c.o

shell/CMakeFiles/shell.dir/private/src/update_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/update_command.c.o: ../shell/private/src/update_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/update_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/update_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/update_command.c

shell/CMakeFiles/shell.dir/private/src/update_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/update_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/update_command.c > CMakeFiles/shell.dir/private/src/update_command.c.i

shell/CMakeFiles/shell.dir/private/src/update_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/update_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/update_command.c -o CMakeFiles/shell.dir/private/src/update_command.c.s

shell/CMakeFiles/shell.dir/private/src/update_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/update_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/update_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/update_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/update_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/update_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/update_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/update_command.c.o

shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o: ../shell/private/src/uninstall_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/uninstall_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/uninstall_command.c

shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/uninstall_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/uninstall_command.c > CMakeFiles/shell.dir/private/src/uninstall_command.c.i

shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/uninstall_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/uninstall_command.c -o CMakeFiles/shell.dir/private/src/uninstall_command.c.s

shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o

shell/CMakeFiles/shell.dir/private/src/log_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/log_command.c.o: ../shell/private/src/log_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/log_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/log_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/log_command.c

shell/CMakeFiles/shell.dir/private/src/log_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/log_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/log_command.c > CMakeFiles/shell.dir/private/src/log_command.c.i

shell/CMakeFiles/shell.dir/private/src/log_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/log_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/log_command.c -o CMakeFiles/shell.dir/private/src/log_command.c.s

shell/CMakeFiles/shell.dir/private/src/log_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/log_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/log_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/log_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/log_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/log_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/log_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/log_command.c.o

shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o: ../shell/private/src/inspect_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/inspect_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/inspect_command.c

shell/CMakeFiles/shell.dir/private/src/inspect_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/inspect_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/inspect_command.c > CMakeFiles/shell.dir/private/src/inspect_command.c.i

shell/CMakeFiles/shell.dir/private/src/inspect_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/inspect_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/inspect_command.c -o CMakeFiles/shell.dir/private/src/inspect_command.c.s

shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o

shell/CMakeFiles/shell.dir/private/src/help_command.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/private/src/help_command.c.o: ../shell/private/src/help_command.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/private/src/help_command.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/private/src/help_command.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/help_command.c

shell/CMakeFiles/shell.dir/private/src/help_command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/private/src/help_command.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/help_command.c > CMakeFiles/shell.dir/private/src/help_command.c.i

shell/CMakeFiles/shell.dir/private/src/help_command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/private/src/help_command.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/shell/private/src/help_command.c -o CMakeFiles/shell.dir/private/src/help_command.c.s

shell/CMakeFiles/shell.dir/private/src/help_command.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/private/src/help_command.c.o.requires

shell/CMakeFiles/shell.dir/private/src/help_command.c.o.provides: shell/CMakeFiles/shell.dir/private/src/help_command.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/private/src/help_command.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/private/src/help_command.c.o.provides

shell/CMakeFiles/shell.dir/private/src/help_command.c.o.provides.build: shell/CMakeFiles/shell.dir/private/src/help_command.c.o

shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o: shell/CMakeFiles/shell.dir/flags.make
shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o: ../log_service/public/src/log_helper.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o   -c /home/marcojansen/workspace/crosscompiling/celix/log_service/public/src/log_helper.c

shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.i"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/marcojansen/workspace/crosscompiling/celix/log_service/public/src/log_helper.c > CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.i

shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.s"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/marcojansen/workspace/crosscompiling/celix/log_service/public/src/log_helper.c -o CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.s

shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.requires:
.PHONY : shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.requires

shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.provides: shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.requires
	$(MAKE) -f shell/CMakeFiles/shell.dir/build.make shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.provides.build
.PHONY : shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.provides

shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.provides.build: shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o

# Object files for target shell
shell_OBJECTS = \
"CMakeFiles/shell.dir/private/src/activator.c.o" \
"CMakeFiles/shell.dir/private/src/shell.c.o" \
"CMakeFiles/shell.dir/private/src/lb_command.c.o" \
"CMakeFiles/shell.dir/private/src/start_command.c.o" \
"CMakeFiles/shell.dir/private/src/stop_command.c.o" \
"CMakeFiles/shell.dir/private/src/install_command.c.o" \
"CMakeFiles/shell.dir/private/src/update_command.c.o" \
"CMakeFiles/shell.dir/private/src/uninstall_command.c.o" \
"CMakeFiles/shell.dir/private/src/log_command.c.o" \
"CMakeFiles/shell.dir/private/src/inspect_command.c.o" \
"CMakeFiles/shell.dir/private/src/help_command.c.o" \
"CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o"

# External object files for target shell
shell_EXTERNAL_OBJECTS =

shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/activator.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/shell.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/lb_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/start_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/stop_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/install_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/update_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/log_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/private/src/help_command.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o
shell/libshell.so: shell/CMakeFiles/shell.dir/build.make
shell/libshell.so: framework/libcelix_framework.so
shell/libshell.so: /usr/lib/x86_64-linux-gnu/libcurl.so
shell/libshell.so: utils/libcelix_utils.so
shell/libshell.so: /usr/lib/x86_64-linux-gnu/libuuid.so
shell/libshell.so: /usr/lib/x86_64-linux-gnu/libz.so
shell/libshell.so: /usr/lib/x86_64-linux-gnu/libcurl.so
shell/libshell.so: shell/CMakeFiles/shell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libshell.so"
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shell.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cpack -C Debug --config /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/CPackConfig-shell-bundle.cmake
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cmake -E make_directory /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/ziptojar
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -xf /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/shell.zip
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cmake -E chdir /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/ziptojar /usr/lib/jvm/jdk1.8.0_60/bin/jar -cfm /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/shell.zip META-INF/MANIFEST.MF .
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && /usr/bin/cmake -E remove_directory /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/ziptojar

# Rule to build all files generated by this target.
shell/CMakeFiles/shell.dir/build: shell/libshell.so
.PHONY : shell/CMakeFiles/shell.dir/build

shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/activator.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/shell.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/lb_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/start_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/stop_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/install_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/update_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/uninstall_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/log_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/inspect_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/private/src/help_command.c.o.requires
shell/CMakeFiles/shell.dir/requires: shell/CMakeFiles/shell.dir/__/log_service/public/src/log_helper.c.o.requires
.PHONY : shell/CMakeFiles/shell.dir/requires

shell/CMakeFiles/shell.dir/clean:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell && $(CMAKE_COMMAND) -P CMakeFiles/shell.dir/cmake_clean.cmake
.PHONY : shell/CMakeFiles/shell.dir/clean

shell/CMakeFiles/shell.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/shell /home/marcojansen/workspace/crosscompiling/celix/build-pc /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/CMakeFiles/shell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shell/CMakeFiles/shell.dir/depend

