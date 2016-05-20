#!/bin/bash
#
# Check that unsupported sections cannot be processed.
#
set -e -x

grep -Pzq "These sections of AutoYaST profile cannot be processed on this system:<br><br>&lt;unsupported/&gt;<br><br>" \
  /var/log/YaST2/y2log && echo "AUTOYAST OK"
