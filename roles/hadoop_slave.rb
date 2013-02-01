name "hadoop_slave"
description "Hadoop Slave"
run_list "role[hadoop_base]", "recipe[hadoop::slave]"

