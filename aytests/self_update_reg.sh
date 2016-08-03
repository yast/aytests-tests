#!/bin/bash

set -e -x

# FATE#319716 - the installer updates need to be installed into inst-sys
# check that the URL from the registration server is detected.
zgrep "Updates for 'SLES' are available at.*static/repos.*" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
