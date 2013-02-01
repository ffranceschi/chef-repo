name "cloudera_zookeeper"
description "Cloudera Zookeeper Server"
run_list "recipe[cloudera::zookeeper]", "recipe[cloudera::zookeeper_server]"

