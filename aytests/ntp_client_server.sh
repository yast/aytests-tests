#!/bin/bash

set -e -x

# Check whether the ntp server was properly configured and the service is
# running.
# (FATE#323249)

test `grep -c "^server server[123]" /etc/ntp.conf` -eq 3
systemctl is-active ntpd
echo "AUTOYAST OK"
