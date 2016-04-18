#
# Cookbook Name:: OW_Docker
# Recipe:: install
#
# Copyright 2016, Rodney Asuncion & Rick MacLean
#
#recipe installs the necessary Docker software on your instances
execute 'install docker-compose' do
   command "curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose  &&  chmod +x /usr/local/bin/docker-compose"
end

