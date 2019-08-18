#!/usr/bin/env bash

APT_REPOSITORY="$1"

### configure apt ##############################################################

# source for "buster"
cat <<- EOF > /etc/apt/sources.list.d/buster.list
	deb     $APT_REPOSITORY buster main contrib non-free
	deb-src $APT_REPOSITORY buster main contrib non-free
EOF

# source for "buster-backports"
cat <<- EOF > /etc/apt/sources.list.d/buster-backports.list
	deb     $APT_REPOSITORY buster-backports main contrib non-free
	deb-src $APT_REPOSITORY buster-backports main contrib non-free
EOF

# source for "security"
cat <<- EOF > /etc/apt/sources.list.d/security.list
	deb     http://security.debian.org/debian-security buster/updates main contrib non-free
	deb-src http://security.debian.org/debian-security buster/updates main contrib non-free
EOF

# remove default source files
rm /etc/apt/sources.list* &> /dev/null || true
