#!/bin/bash

set -e

fgrep -q 'WRITE_HOSTNAME_TO_HOSTS="no"' /etc/sysconfig/network/dhcp
fgrep -q 'DHCLIENT_SET_HOSTNAME="no"' /etc/sysconfig/network/dhcp
fgrep -q 'vagrant-sles12.vagrantup.com' /etc/HOSTNAME

echo "AUTOYAST OK"
