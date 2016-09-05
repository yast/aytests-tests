#!/bin/bash

set -e -x
# Checking if no error has been reported for not defined user UIDs. (bnc#996823)
zgrep "Found users in profile with equal <uid>." \
 /var/log/YaST2/y2log-1.gz || echo "AUTOYAST OK"
