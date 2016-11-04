#!/bin/bash

set -e -x

# FATE#319471 - AutoYaST support for SSH public keys
# Check that only the valid key was added.
USER="suse"
AUTHORIZED_KEYS="/home/$USER/.ssh/authorized_keys"
PROFILE="/root/autoinst.xml"

# Check content
grep "vagrant@localhost.net" $AUTHORIZED_KEYS
KEYS=`wc -l $AUTHORIZED_KEYS | cut -f1 -d " "`
test $KEYS -eq 1

# Check owner and permissios
STAT=`stat -c '%U %a' $AUTHORIZED_KEYS`
test "$STAT" == "$USER 600"

# Check that authorized_keys is present in the exported profile
grep "authorized_keys" $PROFILE

echo "AUTOYAST OK"
