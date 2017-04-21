#!/bin/bash

grep "^NTP=master.example.com" /etc/systemd/timesyncd.conf &&
systemctl is-enabled systemd-timesyncd.service && echo "AUTOYAST OK"

