#!/usr/bin/env bash

APT_REPOSITORY="$1"

### configure apt ##############################################################

# source for "stable"
cat <<- EOF > /etc/apt/sources.list.d/stable.list
	deb     $APT_REPOSITORY stretch main
	deb-src $APT_REPOSITORY stretch main
EOF

# source for "stable-backports"
cat <<- EOF > /etc/apt/sources.list.d/stable-backports.list
	deb     $APT_REPOSITORY stretch-backports main
	deb-src $APT_REPOSITORY stretch-backports main
EOF

# source for "security"
cat <<- EOF > /etc/apt/sources.list.d/security.list
	deb     http://security.debian.org/debian-security stretch/updates main
	deb-src http://security.debian.org/debian-security stretch/updates main
EOF

# remove default source files
rm /etc/apt/sources.list* &> /dev/null || true
