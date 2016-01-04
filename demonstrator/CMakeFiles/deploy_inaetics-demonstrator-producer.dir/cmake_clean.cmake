file(REMOVE_RECURSE
  "deploy/inaetics-demonstrator-all/drivers"
  "deploy/inaetics-demonstrator-queue/drivers"
  "deploy/inaetics-demonstrator-statistic-tracker/drivers"
  "deploy/inaetics-demonstrator-producer/drivers"
  "deploy/inaetics-demonstrator-processor/drivers"
  "deploy/inaetics-demonstrator-dataStore/drivers"
  "CMakeFiles/deploy_inaetics-demonstrator-producer"
  "deploy/inaetics-demonstrator-producer/bundles/shell.zip"
  "deploy/inaetics-demonstrator-producer/bundles/shell_tui.zip"
  "deploy/inaetics-demonstrator-producer/bundles/topology_manager.zip"
  "deploy/inaetics-demonstrator-producer/bundles/discovery_etcd.zip"
  "deploy/inaetics-demonstrator-producer/bundles/remote_service_admin_dfi.zip"
  "deploy/inaetics-demonstrator-producer/bundles/org.inaetics.demonstrator.api.producer.Producer.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_inaetics-demonstrator-producer.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
