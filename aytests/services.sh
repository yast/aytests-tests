#!/bin/bash

#set -e -x

# Services have been enabled/disabled in the first installation stage
# because on CaaSP there is no second stage anymore.

zgrep "systemctl enable sshd.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable cloud-init-local.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable cloud-init.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable cloud-config.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable cloud-final.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable issue-generator.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable issue-add-ssh-keys.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl enable salt-minion.service" /var/log/YaST2/y2log-1.gz
zgrep "systemctl disable purge-kernels.service" /var/log/YaST2/y2log-1.gz

systemctl is-enabled sshd.service
systemctl is-enabled cloud-init-local.service
systemctl is-enabled cloud-init.service
systemctl is-enabled cloud-config.service
systemctl is-enabled cloud-final.service
systemctl is-enabled issue-generator.service
systemctl is-enabled issue-add-ssh-keys.service
systemctl is-enabled salt-minion.service
systemctl is-enabled purge-kernels.service || echo "AUTOYAST OK"
