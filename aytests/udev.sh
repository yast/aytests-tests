#!/bin/bash
set -e

FILE=/etc/udev/rules.d/70-persistent-net.rules

[[ -f $FILE ]]                                       # rules definition file exists
[[ $( fgrep "eth0" $FILE | wc -l ) -eq 1 ]]          # just one rule for eth0
fgrep -q "eth0" $FILE | fgrep -q "52:54:00:5c:0d:86" # rule for eth0 is based on correct value
fgrep -q "eth0" $FILE | fgrep -q "ATTR{address}"     # rule for eth0 is based on correct attribute
fgrep -q "eth1" $FILE                                # rule for the other device also exists

echo "AUTOYAST OK"
