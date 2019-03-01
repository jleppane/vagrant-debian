#!/usr/bin/env bash

# read configuration
. /vagrant/scripts/provision.conf

# execute scripts
. /vagrant/scripts/provision.d/configure-timezone.sh
