#!/bin/bash

set -e -x

# Check if the configuration from the 'runlevel' section was imported
# and handled by 'services-manager' module.

# cron service was disabled in the profile.
systemctl is-enabled cron || echo "AUTOYAST OK"
