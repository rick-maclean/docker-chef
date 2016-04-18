#
# Cookbook Name:: OW_Docker
# Recipe:: install
#
# Copyright 2016, Rodney Asuncion
#
#recipe installs the necessary Docker software on your instances
case node[:platform]
when "ubuntu","debian"
package "docker.io" do
action :install
end
when 'centos','redhat','fedora','amazon'
package "docker" do
action :install
end
end
service "docker" do
action :start
end

