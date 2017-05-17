~#!/bin/bash

# Check whether /home is mounted in the same filesystem than /.

LV_ROOT_DEVICE=/dev/mapper/system-root

findmnt /home | grep $LV_ROOT_DEVICE
echo "AUTOYAST OK"
