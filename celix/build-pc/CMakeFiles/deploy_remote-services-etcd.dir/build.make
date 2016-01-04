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

# Utility rule file for deploy_remote-services-etcd.

# Include the progress variables for this target.
include CMakeFiles/deploy_remote-services-etcd.dir/progress.make

CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/discovery_etcd.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/topology_manager.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/remote_service_admin_http.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/calculator.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/shell.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/shell_tui.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/log_service.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/log_writer.zip
CMakeFiles/deploy_remote-services-etcd: deploy/remote-services-etcd/endpoints/org.apache.celix.calc.api.Calculator_endpoint.zip
CMakeFiles/deploy_remote-services-etcd: launcher/celix
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploy target remote-services-etcd"

deploy/remote-services-etcd/bundles/discovery_etcd.zip: remote_services/discovery_etcd/libdiscovery_etcd.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying discovery_etcd to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/discovery_etcd/discovery_etcd.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/discovery_etcd.zip

deploy/remote-services-etcd/bundles/topology_manager.zip: remote_services/topology_manager/libtopology_manager.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying topology_manager to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/topology_manager/topology_manager.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/topology_manager.zip

deploy/remote-services-etcd/bundles/remote_service_admin_http.zip: remote_services/remote_service_admin_http/libremote_service_admin_http.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying remote_service_admin_http to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/remote_service_admin_http/remote_service_admin_http.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/remote_service_admin_http.zip

deploy/remote-services-etcd/bundles/calculator.zip: remote_services/examples/calculator_service/libcalculator.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying calculator to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_service/calculator.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/calculator.zip

deploy/remote-services-etcd/bundles/shell.zip: shell/libshell.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying shell to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell/shell.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/shell.zip

deploy/remote-services-etcd/bundles/shell_tui.zip: shell_tui/libshell_tui.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying shell_tui to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/shell_tui/shell_tui.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/shell_tui.zip

deploy/remote-services-etcd/bundles/log_service.zip: log_service/liblog_service.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying log_service to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/log_service/log_service.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/log_service.zip

deploy/remote-services-etcd/bundles/log_writer.zip: log_writer/log_writer_stdout/liblog_writer.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying log_writer to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/log_writer/log_writer_stdout/log_writer.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/bundles/log_writer.zip

deploy/remote-services-etcd/endpoints/org.apache.celix.calc.api.Calculator_endpoint.zip: remote_services/examples/calculator_endpoint/liborg.apache.celix.calc.api.Calculator_endpoint.so
	$(CMAKE_COMMAND) -E cmake_progress_report /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Deploying org.apache.celix.calc.api.Calculator_endpoint to remote-services-etcd"
	/usr/bin/cmake -E copy /home/marcojansen/workspace/crosscompiling/celix/build-pc/remote_services/examples/calculator_endpoint/org.apache.celix.calc.api.Calculator_endpoint.zip /home/marcojansen/workspace/crosscompiling/celix/build-pc/deploy/remote-services-etcd/endpoints/org.apache.celix.calc.api.Calculator_endpoint.zip

deploy_remote-services-etcd: CMakeFiles/deploy_remote-services-etcd
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/discovery_etcd.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/topology_manager.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/remote_service_admin_http.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/calculator.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/shell.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/shell_tui.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/log_service.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/bundles/log_writer.zip
deploy_remote-services-etcd: deploy/remote-services-etcd/endpoints/org.apache.celix.calc.api.Calculator_endpoint.zip
deploy_remote-services-etcd: CMakeFiles/deploy_remote-services-etcd.dir/build.make
.PHONY : deploy_remote-services-etcd

# Rule to build all files generated by this target.
CMakeFiles/deploy_remote-services-etcd.dir/build: deploy_remote-services-etcd
.PHONY : CMakeFiles/deploy_remote-services-etcd.dir/build

CMakeFiles/deploy_remote-services-etcd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/deploy_remote-services-etcd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/deploy_remote-services-etcd.dir/clean

CMakeFiles/deploy_remote-services-etcd.dir/depend:
	cd /home/marcojansen/workspace/crosscompiling/celix/build-pc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix /home/marcojansen/workspace/crosscompiling/celix/build-pc /home/marcojansen/workspace/crosscompiling/celix/build-pc /home/marcojansen/workspace/crosscompiling/celix/build-pc/CMakeFiles/deploy_remote-services-etcd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/deploy_remote-services-etcd.dir/depend

