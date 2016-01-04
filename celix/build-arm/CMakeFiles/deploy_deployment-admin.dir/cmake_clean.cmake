file(REMOVE_RECURSE
  "deploy/remote-services-cfg/drivers"
  "deploy/remote-services-cfg-client/drivers"
  "deploy/remote-services-etcd/drivers"
  "deploy/remote-services-etcd-client/drivers"
  "deploy/deployment-admin/drivers"
  "deploy/remote_shell/drivers"
  "CMakeFiles/deploy_deployment-admin"
  "deploy/deployment-admin/bundles/deployment_admin.zip"
  "deploy/deployment-admin/bundles/shell.zip"
  "deploy/deployment-admin/bundles/shell_tui.zip"
  "deploy/deployment-admin/bundles/log_service.zip"
  "deploy/deployment-admin/bundles/log_writer.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_deployment-admin.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
