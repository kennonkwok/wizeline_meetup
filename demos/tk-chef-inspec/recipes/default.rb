#
# Cookbook:: tk-chef-inspec
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'redis-server' do
  action :install
end

service 'redis' do
  action [:enable, :start]
end
