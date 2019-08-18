#!/usr/bin/env bash

### configure apt ##############################################################

# preference for "buster"
cat <<- EOF > /etc/apt/preferences.d/buster.pref
	Package: *
	Pin: release a=buster
	Pin-Priority: 990
EOF

# preference for "security"
cat <<- EOF > /etc/apt/preferences.d/security.pref
	Package: *
	Pin: release l=Debian-Security
	Pin-Priority: 990
EOF
