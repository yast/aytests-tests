#!/bin/bash

set -e -x

# bug 956043 - YAST second stage must not restarted while activating

grep -E ".*restarting services.*YaST2-Second-Stage" /var/log/YaST2/y2log || echo "AUTOYAST OK"
