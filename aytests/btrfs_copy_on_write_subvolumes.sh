#!/bin/bash

# FATE#320342 - additional options can be specified for each subvolume
# (currently only copy_on_write is supported)

set -e -x

# search for the last '-' in "----------------- /" (copy-on-write enabled by default)
lsattr -d / | grep -q -- "- /"

# search for the last '-' in "----------------- /var/lib/pgsql" (copy-on-write enabled manually)
lsattr -d /var/lib/pgsql | grep -q -- "- /var/lib/pgsql"

# search for the 'C' in "----------------C /var/lib/nocow" (copy-on-write disabled manually)
lsattr -d /var/lib/nocow |grep -q "C /var/lib/nocow"

echo "AUTOYAST OK"
