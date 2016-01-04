file(REMOVE_RECURSE
  "deploy/remote-services-cfg/drivers"
  "deploy/remote-services-cfg-client/drivers"
  "deploy/remote-services-etcd/drivers"
  "deploy/remote-services-etcd-client/drivers"
  "deploy/deployment-admin/drivers"
  "deploy/remote_shell/drivers"
  "CMakeFiles/deploy_remote-services-etcd-client"
  "deploy/remote-services-etcd-client/bundles/topology_manager.zip"
  "deploy/remote-services-etcd-client/bundles/remote_service_admin_http.zip"
  "deploy/remote-services-etcd-client/bundles/shell.zip"
  "deploy/remote-services-etcd-client/bundles/shell_tui.zip"
  "deploy/remote-services-etcd-client/bundles/log_service.zip"
  "deploy/remote-services-etcd-client/bundles/log_writer.zip"
  "deploy/remote-services-etcd-client/bundles/calculator_shell.zip"
  "deploy/remote-services-etcd-client/bundles/discovery_etcd.zip"
  "deploy/remote-services-etcd-client/endpoints/org.apache.celix.calc.api.Calculator_proxy.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_remote-services-etcd-client.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
