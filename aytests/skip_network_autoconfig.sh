#!/bin/bash

# Network autoconfiguration should be skipped when it's set up by Linuxrc
# (bsc#988157)
set -e -x

zgrep "network autoconfiguration skipped (or whatever)" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
