#!/usr/bin/env bash

# read configuration
. /vagrant/scripts/provision.conf

# execute configuration scripts
. /vagrant/scripts/provision.d/configure-apt.sh
. /vagrant/scripts/provision.d/configure-timezone.sh

# execute upgrade and install scripts
. /vagrant/scripts/provision.d/apt-upgrade-packages.sh
. /vagrant/scripts/provision.d/apt-install-packages.sh
