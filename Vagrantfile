# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # vagrant box
  config.vm.box = "debian/contrib-buster64"

  # hostname
  config.vm.hostname = "debian.virtual"

  # forward port mappings
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # virtualbox specific configuration
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.cpus = 2
    vb.memory = 1024
  end

  # configure timezone, for example: "UTC" or "Europe/Helsinki
  timezone = "UTC"

  # configure apt repository, for example: "http://www.nic.funet.fi/debian"
  # or "http://deb.debian.org/debian"
  apt_repository = "http://www.nic.funet.fi/debian"

  # configure packages to be installed from "buster"
  apt_packages_buster = [
    "htop",
    "net-tools",
    "vim"
  ]

  # configure packages to be installed from "buster-backports"
  apt_packages_buster_backports = [
  ]

  # provision scripts
  config.vm.provision "shell", path: "scripts/configure-timezone.sh", args: timezone
  config.vm.provision "shell", path: "scripts/configure-apt-default-release.sh"
  config.vm.provision "shell", path: "scripts/configure-apt-preferences.sh"
  config.vm.provision "shell", path: "scripts/configure-apt-sources.sh", args: apt_repository
  config.vm.provision "shell", path: "scripts/apt-upgrade-packages.sh"
  config.vm.provision "shell", path: "scripts/apt-install-packages-buster.sh", args: apt_packages_buster
  config.vm.provision "shell", path: "scripts/apt-install-packages-buster-backports.sh", args: apt_packages_buster_backports
end
