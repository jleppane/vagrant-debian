#!/usr/bin/env bash

APT_PACKAGES="$@"

### install packages ###########################################################

# update package information
apt-get update

# install packages
apt-get -y install $APT_PACKAGES
