#!/bin/bash

set -e -x

zgrep "The registration URL provided is not valid" /var/log/YaST2/y2log-1.gz
zgrep "SCC registration failed: URI::InvalidURIError" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
