name "pig"
description "pig"
run_list "role[hadoop_base]", "recipe[hadoop::pig]"
