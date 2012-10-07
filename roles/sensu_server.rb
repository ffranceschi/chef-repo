name "sensu_server"
description "Sensu Server Role"

override_attributes :sensu => {
  :rabbitmq => {
    :host => "localhost",
    :password => "secret"
  },
  :redis => {
    :host => "localhost"
  },
  :api => {
    :host => "localhost"
  },
  :dashboard => {
    :host => "localhost",
    :password => "secret"
  }
}

run_list(
  "recipe[sensu::rabbitmq]",
  "recipe[sensu::redis]",
  "recipe[sensu::client]",
  "recipe[sensu::server]",
  "recipe[sensu::dashboard]",
  "recipe[sensu::api]"

)

