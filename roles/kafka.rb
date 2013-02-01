name "kafka"
description "kafka"
run_list "recipe[hadoop::base]", "recipe[hadoop::kafka]"

