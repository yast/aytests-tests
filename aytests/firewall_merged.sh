#!/bin/bash
#
# Check if firewall configuration was updated without removing the old
# settings. The FW_CONFIGURATION_EXT was supposed to be enabled during
# installation. The FW_SERVICES_EXT_TCP was added during the upgrade.

set -e -x

grep "FW_CONFIGURATIONS_EXT=\"sshd\"" /etc/sysconfig/SuSEfirewall2
grep "FW_SERVICES_EXT_TCP=\"8080\"" /etc/sysconfig/SuSEfirewall2
echo "AUTOYAST OK"
