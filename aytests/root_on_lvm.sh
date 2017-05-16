#!/bin/bash

# Check whether the root filesystem is on top of a LVM logical volume.

LV_ROOT_DEVICE=/dev/mapper/system-root

lvdisplay $LV_ROOT_DEVICE
findmnt / | grep $LV_ROOT_DEVICE
echo "AUTOYAST OK"
