#!/bin/bash

set -e -x

grep "server ntp.suse.de iburst" /etc/ntp.conf
grep "driftfile /var/lib/ntp/drift/ntp.drift" /etc/ntp.conf
echo "AUTOYAST OK"
