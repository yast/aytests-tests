#!/bin/bash

set -e -x

# checking if the keys have been downloaded
grep "dummy" /etc/salt/pki/minion/minion.pem
grep "dummy" /etc/salt/pki/minion/minion.pub

# checking if the master has been set
grep "master: 'linux-addc'" /etc/salt/minion

# checking if the service is enabled
systemctl is-enabled salt-minion.service

# checking connection to the salt master
zgrep "salt-call --log-level debug state.highstate" /var/log/YaST2/y2log-1.gz
zgrep "Reading configuration from /etc/salt/minion" /var/log/YaST2/y2log-1.gz && echo "AUTOYAST OK"
