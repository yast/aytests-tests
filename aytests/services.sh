#!/bin/bash

#set -e -x

# Services have been enabled/disabled in the first installation stage
# because on CaaSP there is no second stage anymore.

OK=1

zgrep "systemctl enable sshd.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable cloud-init-local.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable cloud-init.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable cloud-config.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable cloud-final.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable issue-generator.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable issue-add-ssh-keys.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl enable salt-minion.service" /var/log/YaST2/y2log-1.gz || OK=0
zgrep "systemctl disable purge-kernels.service" /var/log/YaST2/y2log-1.gz || OK=0

systemctl is-enabled sshd.service || OK=0
systemctl is-enabled cloud-init-local.service || OK=0
systemctl is-enabled cloud-init.service || OK=0
systemctl is-enabled cloud-config.service || OK=0
systemctl is-enabled cloud-final.service || OK=0
systemctl is-enabled issue-generator.service || OK=0
systemctl is-enabled issue-add-ssh-keys.service || OK=0
systemctl is-enabled salt-minion.service || OK=0
systemctl is-enabled purge-kernels.service && OK=0

test $OK -eq 1 && echo "AUTOYAST OK"
