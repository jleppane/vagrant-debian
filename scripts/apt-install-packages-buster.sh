#!/usr/bin/env bash

APT_PACKAGES_BUSTER=("${@}")

### install packages ###########################################################

# update package information
apt-get update

# install packages from "buster"
if [ ${#APT_PACKAGES_BUSTER[@]} -ne 0 ] ; then
  apt-get -y install "${APT_PACKAGES_BUSTER[@]}"
fi
