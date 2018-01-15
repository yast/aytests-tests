#!/bin/bash

set -e -x

# Check whether the chrony service configured and running (FATE#323432)

systemctl is-active chronyd
grep "pool cz.pool.ntp.org" /etc/chrony.conf
echo "AUTOYAST OK"
