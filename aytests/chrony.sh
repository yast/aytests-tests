#!/bin/bash

set -e -x
# Check whether the chrony service configured and running (FATE#323432)
systemctl -a|grep chronyd|grep "activating\|running"
grep "pool cz.pool.ntp.org" /etc/chrony.conf
echo "AUTOYAST OK"
