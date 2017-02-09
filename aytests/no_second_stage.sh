#!/bin/bash
set -e -x

# Check that the second stage is not required

zgrep "It is not required to run the second stage" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
