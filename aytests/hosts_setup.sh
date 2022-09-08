#!/bin/bash

set -e

FILE=/etc/hosts

grep -F -q "h063uz.pnet.ch h063uz" $FILE
grep -F -q "sle15.suse.de" $FILE
grep -F -q "sle13.suse.de" $FILE

# Check one of the IPv6 default entries (bsc#1039851)
grep "ff02::3[[:space:]]\+ipv6-allhosts" $FILE

echo "AUTOYAST OK"
