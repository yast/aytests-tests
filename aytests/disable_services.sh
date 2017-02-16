#!/bin/bash

#set -e -x

# Disabling apache2 in first AND second installation stage.
# This is needed for SLES12-SP2 only

DISABLING_FIRST_STAGE=0
DISABLING_SECOND_STAGE=0
DISABLED=0

zgrep "systemctl disable apache2.service" /var/log/YaST2/y2log-1.gz && DISABLING_FIRST_STAGE=1

grep "systemctl disable apache2.service" /var/log/YaST2/y2log && DISABLING_SECOND_STAGE=1

systemctl is-enabled apache2.service || DISABLED=1

test $DISABLING_FIRST_STAGE -eq 1 -a $DISABLING_SECOND_STAGE -eq 1 -a $DISABLED -eq 1 && echo "AUTOYAST OK"
