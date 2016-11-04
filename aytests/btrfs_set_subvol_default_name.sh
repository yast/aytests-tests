#!/bin/bash

# related to FATE#317775 - by default, btrfs_set_subvolume_default_name should be
# set to true.

set -e -x

grep "subvol=@/home" /etc/fstab
# btrfs_set_default_subvolume_name should not be exported as it's the product's default.
grep "btrfs_set_default_subvolume_name" /root/autoinst.xml || echo "AUTOYAST OK"
