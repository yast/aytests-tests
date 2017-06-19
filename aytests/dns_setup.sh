#!/bin/bash

set -e -x

fgrep -q 'WRITE_HOSTNAME_TO_HOSTS="no"' /etc/sysconfig/network/dhcp || exit 1
fgrep -q 'DHCLIENT_SET_HOSTNAME="no"' /etc/sysconfig/network/dhcp || exit 2
fgrep -q 'vagrant-sles12.vagrantup.com' /etc/HOSTNAME || exit 3

echo "AUTOYAST OK"
