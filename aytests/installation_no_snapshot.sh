#!/bin/bash

set -e -x

# snapshot has not been created and has not been exported (bnc#1039268)
grep "false</enable_snapshots>" /root/autoinst.xml
snapper list || echo "AUTOYAST OK"
