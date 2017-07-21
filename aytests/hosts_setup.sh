#!/bin/bash

set -e

FILE=/etc/hosts

fgrep -q "h063uz.pnet.ch h063uz" $FILE
fgrep -q "sle15.suse.de" $FILE
fgrep -q "sle13.suse.de" $FILE

echo "AUTOYAST OK"
