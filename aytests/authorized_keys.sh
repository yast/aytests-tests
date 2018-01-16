#!/bin/bash

set -e -x

# FATE#319471 - AutoYaST support for SSH public keys
# Check that only the valid key was added.
USER="suse"
AUTHORIZED_KEYS="/home/$USER/.ssh/authorized_keys"
PROFILE="/root/autoinst.xml"
# Check that root ssh authorized keys are written and exported
ROOT_AUTHORIZED_KEYS="/root/.ssh/authorized_keys.aytests"

# Check content
grep "vagrant@localhost.net" $AUTHORIZED_KEYS
KEYS=`wc -l $AUTHORIZED_KEYS | cut -f1 -d " "`
test $KEYS -eq 1

# Check owner and permissios
STAT=`stat -c '%U %a' $AUTHORIZED_KEYS`
test "$STAT" == "$USER 600"

# Check root ssh authorized keys content
grep "root@localhost.net" $ROOT_AUTHORIZED_KEYS
ROOT_KEYS=`wc -l $ROOT_AUTHORIZED_KEYS | cut -f1 -d " "`
test $ROOT_KEYS -eq 1

# Check root ssh authorized keys owner and permissios
STAT=`stat -c '%U %a' $ROOT_AUTHORIZED_KEYS`
test "$STAT" == "root 600"

# Check that authorized_keys is present in the exported profile
grep "authorized_keys" $PROFILE

# Check that root ssh authorized keys are exported
grep "lvjKyz root@localhost.net" $ROOT_AUTHORIZED_KEYS

echo "AUTOYAST OK"
