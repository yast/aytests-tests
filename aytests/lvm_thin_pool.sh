#!/bin/bash

set -e -x

# Check if the LVM thin pool and its thin logical volumes have been created
# (bsc#1086596).
lvdisplay /dev/system/root_lv | grep "LV Pool name.*pool0"
lvdisplay /dev/system/home_lv | grep "LV Pool name.*pool0"
lvdisplay /dev/system/swap_lv | grep "LV Pool name.*pool0"
lvs | grep "pool0.* system t"
echo "AUTOYAST OK"
