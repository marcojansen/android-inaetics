file(REMOVE_RECURSE
  "deploy/remote-services-cfg/drivers"
  "deploy/remote-services-cfg-client/drivers"
  "deploy/remote-services-etcd/drivers"
  "deploy/remote-services-etcd-client/drivers"
  "deploy/deployment-admin/drivers"
  "deploy/remote_shell/drivers"
  "CMakeFiles/deploy_remote_shell"
  "deploy/remote_shell/bundles/shell.zip"
  "deploy/remote_shell/bundles/remote_shell.zip"
  "deploy/remote_shell/bundles/shell_tui.zip"
  "deploy/remote_shell/bundles/log_service.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_remote_shell.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
