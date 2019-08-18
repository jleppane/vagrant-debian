#!/usr/bin/env bash

### configure apt ##############################################################

# set default-release
cat <<- EOF > /etc/apt/apt.conf
	APT::Default-Release "buster";
EOF
