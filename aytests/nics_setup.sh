#!/bin/bash

set -e

grep -F -q "BOOTPROTO='static'" /etc/sysconfig/network/ifcfg-eth1
grep -F -q "NAME='Ethernet Card 0'" /etc/sysconfig/network/ifcfg-eth1

echo "AUTOYAST OK"
