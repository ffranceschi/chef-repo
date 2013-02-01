name "hadoop_namenode"
description "Hadoop NameNode"
run_list "role[hadoop_base]", "recipe[hadoop::namenode]"
override_attributes(
                   "ebs" => {
                     "size" => 500
                   }
)
