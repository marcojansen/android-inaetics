file(REMOVE_RECURSE
  "deploy/inaetics-demonstrator-all/drivers"
  "deploy/inaetics-demonstrator-queue/drivers"
  "deploy/inaetics-demonstrator-statistic-tracker/drivers"
  "deploy/inaetics-demonstrator-producer/drivers"
  "deploy/inaetics-demonstrator-processor/drivers"
  "deploy/inaetics-demonstrator-dataStore/drivers"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/install-all.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
