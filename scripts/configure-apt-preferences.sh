#!/usr/bin/env bash

### configure apt ##############################################################

# preference for "stable"
cat <<- EOF > /etc/apt/preferences.d/stable.pref
	Package: *
	Pin: release a=stable
	Pin-Priority: 990
EOF

# preference for "security"
cat <<- EOF > /etc/apt/preferences.d/security.pref
	Package: *
	Pin: release l=Debian-Security
	Pin-Priority: 990
EOF
