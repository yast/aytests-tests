#!/bin/bash
#
# Check that obsolete sections are not supported.
#
set -e -x

grep -Pzq "These sections of AutoYaST profile are not supported anymore:\n\n<sshd\/>\n\n" \
  /var/log/YaST2/y2log && echo "AUTOYAST OK"
