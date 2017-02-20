#!/bin/bash

#set -e -x

# Services have been enabled/disabled in the first installation stage
# because on CaaSP there is no second stage anymore.

Y2LOG=/var/log/YaST2/y2log-1.gz

zgrep "systemctl enable sshd.service" $Y2LOG
zgrep "systemctl enable cloud-init-local.service" $Y2LOG
zgrep "systemctl enable cloud-init.service" $Y2LOG
zgrep "systemctl enable cloud-config.service" $Y2LOG
zgrep "systemctl enable cloud-final.service" $Y2LOG
zgrep "systemctl enable issue-generator.service" $Y2LOG
zgrep "systemctl enable issue-add-ssh-keys.service" $Y2LOG
zgrep "systemctl enable salt-minion.service" $Y2LOG
zgrep "systemctl disable purge-kernels.service" $Y2LOG

systemctl is-enabled sshd.service
systemctl is-enabled cloud-init-local.service
systemctl is-enabled cloud-init.service
systemctl is-enabled cloud-config.service
systemctl is-enabled cloud-final.service
systemctl is-enabled issue-generator.service
systemctl is-enabled issue-add-ssh-keys.service
systemctl is-enabled salt-minion.service
systemctl is-enabled purge-kernels.service || echo "AUTOYAST OK"
