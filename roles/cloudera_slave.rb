name "cloudera_slave"
description "Cloudera Slave Node. Configures Datanode, TaskTracker, Hbase Regionserver"
run_list "role[cloudera_datanode]", "role[cloudera_tasktracker]", "role[cloudera_regionserver]"

