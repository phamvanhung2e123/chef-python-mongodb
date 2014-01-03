# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "my_box"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 3306,host: 3306
  config.vm.network :forwarded_port, guest: 80, host: 9001
  config.vm.network :forwarded_port, guest: 27017, host: 27019
  config.vm.network :private_network, ip: "69.69.69.69"
# Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #

  # config.vm.provision :shell, :path => 'vagrant_scripts/before_script.sh'
  config.vm.synced_folder "./", "/home/vagrant/data"
  config.vm.provision :chef_solo do |chef|
	chef.add_recipe 'apt'
	chef.add_recipe 'git'
	chef.add_recipe 'apache2'
  	chef.add_recipe 'zsh'
  end

  #config.vm.provision :shell, :path => 'vagrant_scripts/after_script.sh'
end
