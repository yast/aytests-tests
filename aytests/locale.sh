#!/bin/bash

set -e -x

# Check if the locale was set accordingly to the profile (bsc#1023774)
zgrep "keyboard persistent: /usr/bin/localectl .* set-keymap de_DE" /var/log/YaST2/y2log-1.gz
grep KEYMAP="de_DE" /etc/vconsole.conf

echo "AUTOYAST OK"
