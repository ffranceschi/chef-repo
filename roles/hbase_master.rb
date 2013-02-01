name "hbase_master"
description "Hbase Master Node"
run_list "recipe[hadoop::hbasemaster]"

override_attributes(
                   "ebs" => {
                     "size" => 500
                   }
)
