#!/bin/bash

set -x

# FATE#319716 - the self-update feature can be disabled via self_update boot
# parameter (self_update=0)
zgrep "Trying installer update" /var/log/YaST2/y2log-1.gz || echo "AUTOYAST OK"
