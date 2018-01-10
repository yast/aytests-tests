#!/bin/bash

set -e -x

INTERFACES=`firewall-offline-cmd --zone=external --list-interfaces`
SERVICES=`firewall-offline-cmd --zone=external --list-services`
PORTS=`firewall-offline-cmd --zone=external --list-ports`
DEFAULT_ZONE=`firewall-offline-cmd --get-default-zone`

test "$INTERFACES" == "eth0"
test "$SERVICES" == "ssh dhcp dhcpv6 samba vnc-server"
test "$PORTS" == "21/udp 22/udp 80/tcp 443/tcp 8080/tcp"
test "$DEFAULT_ZONE" == "dmz"
echo "AUTOYAST OK"
