name "cloudera_hbasemaster"
description "Cloudera Hbase Master"
run_list "recipe[cloudera::hbase]", "recipe[cloudera::hbase_master]"

