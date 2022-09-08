#!/bin/bash

set -e

FILE=/etc/sysconfig/network/ifroute-eth1

test -e $FILE
grep -F -q "192.168.2.1 - - eth1" $FILE
grep -F -q "default 192.168.1.1 - eth1" $FILE

echo "AUTOYAST OK"
