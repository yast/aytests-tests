#!/bin/bash

# FATE#320342 - additional options can be specified for each subvolume
# (currently only copy_on_write is supported)

set -e -x

# search for no flags '---' (copy-on-write enabled by default)
lsattr -dl / | grep -q -- "---"

# search for no flags '---' (copy-on-write enabled manually)
lsattr -dl /var/lib/pgsql | grep -q -- "---"

# search for 'No_COW' flag (copy-on-write disabled manually)
lsattr -dl /var/lib/nocow |grep -q "No_COW"

echo "AUTOYAST OK"
