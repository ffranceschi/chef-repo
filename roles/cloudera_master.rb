name "cloudera_master"
description "Cloudera Master Node. Configures Namenode, JobTracker, Zookeeper Server and Hbase Master"
run_list "role[cloudera_namenode]", "role[cloudera_jobtracker]", "role[cloudera_zookeeper]", "role[cloudera_hbasemaster]"

