#!/bin/bash

set -e -x

# Check that the certificate from the registration server is imported.
# TODO: It would be nice to check that the file is finally copied to
# the installed system, but it only happens when the system is registered.
zgrep "Certificate import result: true" /var/log/YaST2/y2log*
echo "AUTOYAST OK"
