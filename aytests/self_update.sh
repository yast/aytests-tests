#!/bin/bash

set -e -x

# FATE#319716 - the installer updates need to be installed into inst-sys
# check that the URL from the profile is used and that the installer is restarted
zgrep "self-update URLs are.*http://.*/static/repos/sles12" /var/log/YaST2/y2log-1.gz
zgrep "Calling \`inst_update_installer .* returned \`restart_yast" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
