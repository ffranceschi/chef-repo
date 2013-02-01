name "hadoop_secondarynamenode"
description "Hadoop Secondary NameNode"
run_list "role[hadoop_base]", "recipe[hadoop::secondarynamenode]"
override_attributes(
                   "ebs" => {
                     "size" => 500
                   }
)
