#!/bin/bash

set -e -x

zgrep "Language 'POSIX' was not found within the list of supported languages" /var/log/YaST2/y2log-1.gz
zgrep "Fallback language en_US will be used" /var/log/YaST2/y2log-1.gz
grep "RC_LANG=\"en_US.UTF-8\"" /etc/sysconfig/language
echo "AUTOYAST OK"
