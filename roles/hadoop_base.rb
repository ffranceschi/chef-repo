name "hadoop_base"
description "The base role for Hadoop"
run_list "recipe[hadoop]"

default_attributes(
                    "Hadoop" => {
                      "Env"     => { "HADOOP_HEAPSIZE"   =>  "256" },
                    },

                   "hadoop" => {
                     "cluster" => "clusterA",
                   }

)
