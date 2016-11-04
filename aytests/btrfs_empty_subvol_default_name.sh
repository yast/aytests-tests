#!/bin/bash

# FATE#317775 - the installer should allow to not set any Btrfs subvolume default name
# (setting the btrfs_set_subvolume_default_name to false).

set -e -x

grep "subvol=home" /etc/fstab
grep '<btrfs_set_default_subvolume_name .*>false</btrfs_set_default_subvolume_name>' /root/autoinst.xml
echo "AUTOYAST OK"
