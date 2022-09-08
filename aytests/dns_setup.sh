#!/bin/bash

set -e

grep -F -q 'WRITE_HOSTNAME_TO_HOSTS="no"' /etc/sysconfig/network/dhcp
grep -F -q 'DHCLIENT_SET_HOSTNAME="no"' /etc/sysconfig/network/dhcp
grep -F -q 'vagrant-sles12.vagrantup.com' /etc/HOSTNAME

echo "AUTOYAST OK"
