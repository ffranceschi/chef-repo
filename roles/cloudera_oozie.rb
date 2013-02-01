name "cloudera_oozie"
description "Cloudera Oozie"
run_list "recipe[cloudera::oozie_client]", "recipe[cloudera::oozie_server]"

