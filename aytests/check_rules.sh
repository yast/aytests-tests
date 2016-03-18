#!/bin/bash
#
# Check that AutoYaST rules were retrieved correctly.
#
set -e -x

Y2LOG=/var/log/YaST2/y2log-1.gz

# mac matches
zgrep -e 'ATTR.*"mac"=>"020000123456"' $Y2LOG

# hostid, hostaddress and network aren't nil
zgrep -e 'ATTR.*"hostid"=>"[^ ]*"' $Y2LOG
zgrep -e 'ATTR.*"hostaddress"=>"[^ ]*"' $Y2LOG
zgrep -e 'ATTR.*"network"=>"[^ ]*"' $Y2LOG

echo "AUTOYAST OK"
