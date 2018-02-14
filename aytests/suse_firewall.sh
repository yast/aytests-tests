#!/bin/bash

set -e -x

# FW_DEV_EXT = "eth0"
INTERFACES=`firewall-offline-cmd --zone=public --list-interfaces`
# FW_DEV_DMZ = "any"
DEFAULT_ZONE=`firewall-offline-cmd --get-default-zone`

# FW_CONFIGURATIONS_EXT="apache2 apache2-ssl sshd"
SERVICES=`firewall-offline-cmd --zone=public --list-services`
SORTED_SERVICES=$(printf "%s\n" $SERVICES | sort -n | tr '\n' ' ')

# FW_SERVICES_EXT_TCP = "8080"
# FW_SERVICES_EXT_UDP = "9090"
PORTS=`firewall-offline-cmd --zone=public --list-ports`

test "$INTERFACES" == "eth0"
test "$SORTED_SERVICES" == "http https ssh "
test "$PORTS" == "8080/tcp 9090/udp"
test "$DEFAULT_ZONE" == "dmz"
echo "AUTOYAST OK"
