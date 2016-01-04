file(REMOVE_RECURSE
  "deploy/remote-services-cfg/drivers"
  "deploy/remote-services-cfg-client/drivers"
  "deploy/remote-services-etcd/drivers"
  "deploy/remote-services-etcd-client/drivers"
  "deploy/deployment-admin/drivers"
  "deploy/remote_shell/drivers"
  "CMakeFiles/deploy_remote-services-cfg"
  "deploy/remote-services-cfg/bundles/discovery_configured.zip"
  "deploy/remote-services-cfg/bundles/topology_manager.zip"
  "deploy/remote-services-cfg/bundles/remote_service_admin_http.zip"
  "deploy/remote-services-cfg/bundles/calculator.zip"
  "deploy/remote-services-cfg/bundles/shell.zip"
  "deploy/remote-services-cfg/bundles/shell_tui.zip"
  "deploy/remote-services-cfg/bundles/log_service.zip"
  "deploy/remote-services-cfg/bundles/log_writer.zip"
  "deploy/remote-services-cfg/endpoints/org.apache.celix.calc.api.Calculator_endpoint.zip"
  "deploy/remote-services-cfg/endpoints/org.apache.celix.calc.api.Calculator2_endpoint.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_remote-services-cfg.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
