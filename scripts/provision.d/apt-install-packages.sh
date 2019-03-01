#!/usr/bin/env bash

### install packages ###########################################################

# update package information
apt-get update

# install packages
[[ ${#APT_PACKAGES[@]} -ne 0 ]] && apt-get -y install "${APT_PACKAGES[@]}"
