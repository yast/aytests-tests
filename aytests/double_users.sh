#!/bin/bash

set -e -x
zgrep "Found users in profile with equal <username>." /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
