#!/usr/bin/env bash

APT_PACKAGES_STABLE_BACKPORTS=("${@}")

### install packages ###########################################################

# update package information
apt-get update

# install packages from "stable-backports"
if [ ${#APT_PACKAGES_STABLE_BACKPORTS[@]} -ne 0 ] ; then
  apt-get -y install "${APT_PACKAGES_STABLE_BACKPORTS[@]}"
fi
