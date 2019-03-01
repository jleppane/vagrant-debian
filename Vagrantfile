# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # vagrant box
  config.vm.box = "debian/contrib-stretch64"

  # hostname
  config.vm.hostname = "debian.dev"

  # forward port mappings
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # virtualbox specific configuration
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.cpus = 2
    vb.memory = 1024
  end

  # provision
  config.vm.provision "shell", path: "scripts/provision.sh"
end
