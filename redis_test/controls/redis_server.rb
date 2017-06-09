# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'redis test'

# http://inspec.io/docs/reference/resources/package/
describe package('redis-server') do
  it { should be_installed }
end

# http://inspec.io/docs/reference/resources/service/
describe service('redis') do
  it { should be_running }
  it { should be_enabled }
end

# http://inspec.io/docs/reference/resources/port/
describe port(6379) do
  it { should be_listening }
end

# http://inspec.io/docs/reference/resources/command/
describe command('redis-cli info') do
  its('exit_status') { should eq 0 }
end
