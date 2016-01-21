#!/bin/bash
# Checking if ca management has reported an error and has gone on. (bnc#962328)
set -e -x
grep "Showing error" /var/log/YaST2/y2log | grep "postmaster@" && echo "AUTOYAST OK"
