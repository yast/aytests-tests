#!/bin/bash

set -e -x

grep "elevator=noop" /boot/grub2/grub.cfg && echo "AUTOYAST OK"
