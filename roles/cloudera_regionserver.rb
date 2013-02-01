name "cloudera_regionserver"
description "Cloudera Hbase Regionserver"
run_list "recipe[cloudera::hbase]", "recipe[cloudera::hbase_regionserver]"

