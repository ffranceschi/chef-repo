name "hadoop_jobtracker"
description "Hadoop JobTracker"
run_list "role[hadoop_base]", "recipe[hadoop::jobtracker]"

override_attributes(
                   "ebs" => {
                     "size" => 500
                   }
)
