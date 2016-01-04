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

# Utility rule file for deploy_remote_shell.

# Include the progress variables for this target.
include CMakeFiles/deploy_remote_shell.dir/progress.make

CMakeFiles/deploy_remote_shell: deploy/remote_shell/bundles/shell.zip
CMakeFiles/deploy_remote_shell: deploy/remote_shell/bundles/remote_shell.zip
CMakeFiles/deploy_remote_shell: deploy/remote_shell/bundles/shell_tui.zip
CMakeFiles/deploy_remote_shell: deploy/remote_shell/bundles/log_service.zip
CMakeFiles/deploy_remote_shell: launcher/celix
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploy target remote_shell"

deploy/remote_shell/bundles/shell.zip: shell/libshell.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying shell to remote_shell"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-arm/shell/shell.zip /home/marcojansen/workspace/crosscompiling/celix/build-arm/deploy/remote_shell/bundles/shell.zip

deploy/remote_shell/bundles/remote_shell.zip: remote_shell/libremote_shell.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying remote_shell to remote_shell"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-arm/remote_shell/remote_shell.zip /home/marcojansen/workspace/crosscompiling/celix/build-arm/deploy/remote_shell/bundles/remote_shell.zip

deploy/remote_shell/bundles/shell_tui.zip: shell_tui/libshell_tui.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying shell_tui to remote_shell"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-arm/shell_tui/shell_tui.zip /home/marcojansen/workspace/crosscompiling/celix/build-arm/deploy/remote_shell/bundles/shell_tui.zip

deploy/remote_shell/bundles/log_service.zip: log_service/liblog_service.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying log_service to remote_shell"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-arm/log_service/log_service.zip /home/marcojansen/workspace/crosscompiling/celix/build-arm/deploy/remote_shell/bundles/log_service.zip

deploy_remote_shell: CMakeFiles/deploy_remote_shell
deploy_remote_shell: deploy/remote_shell/bundles/shell.zip
deploy_remote_shell: deploy/remote_shell/bundles/remote_shell.zip
deploy_remote_shell: deploy/remote_shell/bundles/shell_tui.zip
deploy_remote_shell: deploy/remote_shell/bundles/log_service.zip
deploy_remote_shell: CMakeFiles/deploy_remote_shell.dir/build.make
.PHONY : deploy_remote_shell

# Rule to build all files generated by this target.
CMakeFiles/deploy_remote_shell.dir/build: deploy_remote_shell
.PHONY : CMakeFiles/deploy_remote_shell.dir/build

CMakeFiles/deploy_remote_shell.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/deploy_remote_shell.dir/cmake_clean.cmake
.PHONY : CMakeFiles/deploy_remote_shell.dir/clean

CMakeFiles/deploy_remote_shell.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-arm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/build-arm /home/marcojansen/workspace/crosscompiling/celix/build-arm /home/marcojansen/workspace/crosscompiling/celix/build-arm/CMakeFiles/deploy_remote_shell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/deploy_remote_shell.dir/depend

