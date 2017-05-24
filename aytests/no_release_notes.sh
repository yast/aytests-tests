#!/bin/bash

set -x

# release notes are not downloaded for AY (bsc#1009276)
zgrep "Downloading release notes:.*curl" /var/log/YaST2/y2log-1.gz || echo "AUTOYAST OK"
