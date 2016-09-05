#!/bin/bash

set -e -x
# Checking if no error has been reported for not defined user UIDs. (bnc#996823)
DOUBLE_UID=1
zgrep "Found users in profile with equal <uid>."\
 /var/log/YaST2/y2log-1.gz && DOUBLE_UID=0
test $DOUBLE_UID -eq 1 && echo "AUTOYAST OK"
