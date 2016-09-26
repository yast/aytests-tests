#!/bin/bash
set -e -x

# Check it handles correctly multiple kdump crash_kernel options

grep "crashkernel=72M,low crashkernel=32M,high" /boot/grub2/grub.cfg
# Check if general section has not been overwritten by proposal. bnc#995750
grep "<KDUMP_KEEP_OLD_DUMPS>10</KDUMP_KEEP_OLD_DUMPS>" /root/autoinst.xml
echo "AUTOYAST OK"
