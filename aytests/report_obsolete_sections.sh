#!/bin/bash
#
# Check that obsolete sections are not supported.
#
set -e -x

zgrep "These sections of AutoYaST profile are not supported anymore:<br><br>&lt;sshd/&gt;<br><br>" \
  /var/log/YaST2/y2log-1* && echo "AUTOYAST OK"
