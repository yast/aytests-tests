#!/bin/bash

set -e

FILE=/etc/sysconfig/network/ifroute-eth1

test -e $FILE
fgrep -q "192.168.2.1 - - eth1" $FILE
fgrep -q "default 192.168.1.1 - eth1" $FILE

echo "AUTOYAST OK"
