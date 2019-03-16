#!/usr/bin/env bash

APT_PACKAGES_STABLE=("${@}")

### install packages ###########################################################

# update package information
apt-get update

# install packages from "stable"
if [ ${#APT_PACKAGES_STABLE[@]} -ne 0 ] ; then
  apt-get -y install "${APT_PACKAGES_STABLE[@]}"
fi
