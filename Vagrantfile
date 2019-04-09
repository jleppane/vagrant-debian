# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # vagrant box
  config.vm.box = "debian/contrib-stretch64"

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

  # configure packages to be installed from "stable"
  apt_packages_stable = [
    "htop",
    "net-tools",
    "vim"
  ]

  # configure packages to be installed from "stable-backports"
  apt_packages_stable_backports = [
  ]

  # provision scripts
  config.vm.provision "shell", path: "scripts/configure-timezone.sh", args: timezone
  config.vm.provision "shell", path: "scripts/configure-apt-default-release.sh"
  config.vm.provision "shell", path: "scripts/configure-apt-preferences.sh"
  config.vm.provision "shell", path: "scripts/configure-apt-sources.sh", args: apt_repository
  config.vm.provision "shell", path: "scripts/apt-upgrade-packages.sh"
  config.vm.provision "shell", path: "scripts/apt-install-packages-stable.sh", args: apt_packages_stable
  config.vm.provision "shell", path: "scripts/apt-install-packages-stable-backports.sh", args: apt_packages_stable_backports
end
