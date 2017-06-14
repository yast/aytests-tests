#!/bin/bash

set -e -x

zgrep "Requested partition size of 500.00 GiB on \"/\" will be reduced to" /var/log/YaST2/y2log-1*
echo "AUTOYAST OK"
