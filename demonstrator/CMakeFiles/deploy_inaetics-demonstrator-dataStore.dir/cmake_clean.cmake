file(REMOVE_RECURSE
  "deploy/inaetics-demonstrator-all/drivers"
  "deploy/inaetics-demonstrator-queue/drivers"
  "deploy/inaetics-demonstrator-statistic-tracker/drivers"
  "deploy/inaetics-demonstrator-producer/drivers"
  "deploy/inaetics-demonstrator-processor/drivers"
  "deploy/inaetics-demonstrator-dataStore/drivers"
  "CMakeFiles/deploy_inaetics-demonstrator-dataStore"
  "deploy/inaetics-demonstrator-dataStore/bundles/shell.zip"
  "deploy/inaetics-demonstrator-dataStore/bundles/shell_tui.zip"
  "deploy/inaetics-demonstrator-dataStore/bundles/discovery_etcd.zip"
  "deploy/inaetics-demonstrator-dataStore/bundles/topology_manager.zip"
  "deploy/inaetics-demonstrator-dataStore/bundles/remote_service_admin_dfi.zip"
  "deploy/inaetics-demonstrator-dataStore/bundles/org.inaetics.demonstrator.api.datastore.DataStore.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_inaetics-demonstrator-dataStore.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
