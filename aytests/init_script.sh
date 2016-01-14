#!/bin/bash

set -e -x
# Checking if AutoYaST init scipts have been downloaded and have been
# executed
# bnc#961320

grep "AutoYaST" /var/log/autoyast_init_script.log && echo "AUTOYAST OK"
