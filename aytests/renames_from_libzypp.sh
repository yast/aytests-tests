#!/bin/bash

set -e -x

# FATE#321751 - read product rename information from libzypp
LOGFILE=/var/log/YaST2/y2log-1.gz
zgrep "Adding product rename: 'SUSE_SLES' => 'SLES'" $LOGFILE
zgrep "Search.*rename in libzypp.*\"SUSE_SLES\"=>\"SLES\"" $LOGFILE
echo "AUTOYAST OK"
