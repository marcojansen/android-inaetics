file(REMOVE_RECURSE
  "deploy/remote-services-cfg/drivers"
  "deploy/remote-services-cfg-client/drivers"
  "deploy/remote-services-etcd/drivers"
  "deploy/remote-services-etcd-client/drivers"
  "deploy/deployment-admin/drivers"
  "deploy/remote_shell/drivers"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/install-all.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
