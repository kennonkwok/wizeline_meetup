# Wizeline GDL DevOps meetup demo

## Prerequesites
 - Install ChefDK (https://downloas.chef.io/chefdk)
 - Install Vagrant (https://www.vagrantup.com/downloads.html)
 - Install Virtualbox (https://www.virtualbox.org/wiki/Downloads)

## Install extra gems for demo
    chef gem install kitchen-ansible
    chef gem install kitchen-puppet

## Review VM testing workflow (Chef)
  - Create Virtual Machine
  - Install Chef Tools
  - Copy Cookbooks
  - Run/Apply Cookbooks
  - Verify Assumptions
  - Destroy Virtual Machine

## Take a look at the redis test
    cat redis_test/controls/redis_server.rb

## TK+Chef+InSpec in action
    cd demos/tk-chef-inspec
    cat recipes/default.rb
    cat .kitchen.yml
    kitchen create
    kitchen converge
    kitchen login (manual check)
    kitchen verify
    kitchen destroy
    kitchen test

## TK+Puppet+InSpec in action
    cd demos/tk-puppet-inspec
    cat manifests/site.pp
    cat .kitchen.yml
    kitchen test
 
## TK+Ansible+InSpec in action
    cd demos/tk-chef-inspec
    cat playbooks/default.yml
    cat .kitchen.yml
    kitchen test