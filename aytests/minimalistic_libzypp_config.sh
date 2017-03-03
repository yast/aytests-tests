#!/bin/bash

set -e -x

# Check if libzypp configuration is suitable for a minimalistic system:
# only required packages, no documentation and no multiversion.
# (FATE#321764)

LIBZYPP_CONF=/etc/zypp/zypp.conf

grep "^solver.onlyRequires=true" $LIBZYPP_CONF
grep "^rpm.install.excludedocs=yes" $LIBZYPP_CONF
grep -E "^multiversion =$" $LIBZYPP_CONF
echo "AUTOYAST OK"
