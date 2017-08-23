#!/bin/bash

set -e -x

# Check if the locale was set accordingly to the profile (bsc#1023774)
zgrep "keyboard persistent: /usr/bin/localectl .* set-keymap de-" /var/log/YaST2/y2log-1.gz
grep INSTALLED_LANGUAGES=\"de_DE /etc/sysconfig/language

echo "AUTOYAST OK"
