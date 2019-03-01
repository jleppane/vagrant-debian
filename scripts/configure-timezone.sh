#!/usr/bin/env bash

TIMEZONE="$1"

### configure timezone #########################################################

ln -sf /usr/share/$TIMEZONE /etc/localtime

cat <<- EOF > /etc/timezone
	$TIMEZONE
EOF

dpkg-reconfigure --frontend noninteractive tzdata
