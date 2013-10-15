# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "cassandra"
  config.vm.box = "vagrant-ubuntu-12.04"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.omnibus.chef_version = "11.6.0"
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.run_list = [
      "recipe[apt]",
      "recipe[cassandra::datastax]",
      "recipe[cassandra::firewall]"
    ]
  end
end
