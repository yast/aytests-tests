#!/bin/bash

set -e -x
zgrep "Option \"auto\" is not supported with LVM" /var/log/YaST2/y2log-1* && echo "AUTOYAST OK"
