#!/bin/bash

set -e -x

zgrep "You have notifications from the following packages" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
