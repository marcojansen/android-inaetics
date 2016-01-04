file(REMOVE_RECURSE
  "deploy/inaetics-demonstrator-all/drivers"
  "deploy/inaetics-demonstrator-queue/drivers"
  "deploy/inaetics-demonstrator-statistic-tracker/drivers"
  "deploy/inaetics-demonstrator-producer/drivers"
  "deploy/inaetics-demonstrator-processor/drivers"
  "deploy/inaetics-demonstrator-dataStore/drivers"
  "CMakeFiles/deploy_inaetics-demonstrator-all"
  "deploy/inaetics-demonstrator-all/bundles/org.inaetics.demonstrator.api.queue.SampleQueue.zip"
  "deploy/inaetics-demonstrator-all/bundles/org.inaetics.demonstrator.api.stats.StatisticTracker.zip"
  "deploy/inaetics-demonstrator-all/bundles/org.inaetics.demonstrator.api.datastore.DataStore.zip"
  "deploy/inaetics-demonstrator-all/bundles/org.inaetics.demonstrator.api.producer.Producer.zip"
  "deploy/inaetics-demonstrator-all/bundles/org.inaetics.demonstrator.api.processor.Processor.zip"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/deploy_inaetics-demonstrator-all.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
