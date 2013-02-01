name "oozie"
description "oozie"
run_list "role[hadoop_base]", "recipe[hadoop::oozie]"
