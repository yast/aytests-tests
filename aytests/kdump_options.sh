#!/bin/bash
set -e -x

# Check if handles correctly multiple kdump crash_kernel options

grep "crashkernel=72M,low crashkernel=32M,high" /boot/grub2/grub.cfg
echo "AUTOYAST OK"
