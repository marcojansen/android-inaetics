file(REMOVE_RECURSE
  "deploy/remote-services-etcd/drivers"
  "deploy/remote-services-etcd-client/drivers"
  "deploy/deployment-admin/drivers"
  "deploy/remote_shell/drivers"
  "CMakeFiles/deploy_remote-services-etcd"
  "deploy/remote-services-etcd/bundles/discovery_etcd.zip"
  "deploy/remote-services-etcd/bundles/topology_manager.zip"
  "deploy/remote-services-etcd/bundles/remote_service_admin_http.zip"
  "deploy/remote-services-etcd/bundles/calculator.zip"
  "deploy/remote-services-etcd/bundles/shell.zip"
  "deploy/remote-services-etcd/bundles/shell_tui.zip"
  "deploy/remote-services-etcd/bundles/log_service.zip"
  "deploy/remote-services-etcd/bundles/log_writer.zip"
  "deploy/remote-services-etcd/endpoints/org.apache.celix.calc.api.Calculator_endpoint.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_remote-services-etcd.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
