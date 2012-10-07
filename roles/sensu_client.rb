name "sensu_client"
description "Sensu Client Role"

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
  "recipe[sensu::client]"
)

