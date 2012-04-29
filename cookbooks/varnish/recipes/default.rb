#
# Cookbook Name:: varnish
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "varnish" do
  action :install
end

template "/etc/varnish/varnishreload.sh" do 
  owner "root"
  group "root"
  mode "0755"
  source "varnishreload.sh.erb"
  notifies :reload, resources(:service => "varnish")
end

template "/etc/varnish/default.vcl" do
  owner "root"
  group "root"
  mode "0644"
  source "default.vcl.erb"
  notifies :reload, resources(:service => "varnish")
end

template "/etc/varnish/director.vcl" do
  owner "root"
  group "root"
  mode "0644"
  source "director.vcl.erb"
  notifies :reload, resources(:service => "varnish")
end

template "/etc/varnish/backend.vcl" do
  owner "root"
  group "root"
  mode "0644"
  source "backend.vcl.erb"
  notifies :reload, resources(:service => "varnish")
end

template "/etc/varnish/devicedetect.vcl" do
  owner "root"
  group "root"
  mode "0644"
  source "devicedetect.vcl.erb"
  notifies :reload, resources(:service => "varnish")
end


service "varnish" do
  service_name "varnish"
  pattern "varnish"
  reload_command "/etc/varnish/varnishreload.sh"
  action [ :enable, :start ]
  supports :start => true, :stop => true, :status => true, :restart => true, :reload => true
end
