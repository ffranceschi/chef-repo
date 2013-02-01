name "cloudera_hive"
description "Cloudera Hive"
run_list "recipe[mysql::server]", "recipe[cloudera::hive]", "recipe[cloudera::hive_metastore]", "recipe[cloudera::hive_server]"

