#!/bin/bash
set -e -x

# Taking proposed values if <crash_kernel>, <general> have not been defined in AutoYaST configuration file. (bnc#997448)
grep "crashkernel=[0-9]" /boot/grub2/grub.cfg
grep "<KDUMP_KEEP_OLD_DUMPS>5</KDUMP_KEEP_OLD_DUMPS>" /root/autoinst.xml
echo "AUTOYAST OK"
