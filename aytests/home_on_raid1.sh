#!/bin/bash

set -e -x

# Check whether the software RAID device (md1) was created.

mdadm /dev/md/home | grep "raid1 2 devices"
home_info=$(findmnt /home --noheadings --output SOURCE,FSTYPE)
test "$home_info" == "/dev/md127 xfs"
echo "AUTOYAST OK"
