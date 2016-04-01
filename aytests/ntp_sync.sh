#!/bin/bash

set -e -x
# Checking it ntp sync has been passed
zgrep "NTP syncing with" /var/log/YaST2/y2log-1* && echo "AUTOYAST OK"
