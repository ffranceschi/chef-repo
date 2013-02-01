# Use the default openjdk one.
#
# Note: if this doesn't work, see
# http://tickets.opscode.com/browse/COOK-447,
# http://tickets.opscode.com/browse/OHAI-235
# and apply https://github.com/opscode/ohai/commit/ed48a8954861acbb0108fafe948b55858dc30f86 
name  "java"
description "openjdk java"
default_attributes(
  "java" => {
    "install_flavor" => "openjdk"
  }
)
run_list 'recipe[java]'
