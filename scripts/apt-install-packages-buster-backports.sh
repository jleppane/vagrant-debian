#!/usr/bin/env bash

APT_PACKAGES_BUSTER_BACKPORTS=("${@}")

### install packages ###########################################################

# update package information
apt-get update

# install packages from "buster-backports"
if [ ${#APT_PACKAGES_BUSTER_BACKPORTS[@]} -ne 0 ] ; then
  apt-get -y -t buster-backports install "${APT_PACKAGES_BUSTER_BACKPORTS[@]}"
fi
