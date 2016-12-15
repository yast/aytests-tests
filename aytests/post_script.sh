#!/bin/bash

set -e -x
# Checking if AutoYaST post scipts have been downloaded and have been
# executed.
# bnc#1014859

grep "AutoYaST" /var/log/autoyast_post_script.log && echo "AUTOYAST OK"
