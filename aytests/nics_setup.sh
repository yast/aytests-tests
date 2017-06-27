#!/bin/bash

set -e

fgrep -q "BOOTPROTO='static'" /etc/sysconfig/network/ifcfg-eth1
fgrep -q "NAME='Ethernet Card 0'" /etc/sysconfig/network/ifcfg-eth1

echo "AUTOYAST OK"
