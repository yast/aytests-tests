#!/bin/bash
set -x

# Check if expected sections are in the profile. This test should be replaced
# by profile_sections.sh when storage-ng is finally merged.
AUTOINST="/root/autoinst.xml"

# Expected sections to be present in autoinst.xml
# FIXME: these sections have been intentionally removed until
# storage-ng is merged into master: add-on, ca_mgm, firewall,
# kdump, ntp-client and printer.
EXPECTED=(bootloader deploy_image general groups host \
  keyboard language login_settings networking partitioning \
  proxy report services-manager software timezone user_defaults users\
  ssh_import add-on ntp-client)

# Install xmlstartlet if it is not already available
rpm -qi xmlstarlet || zypper --non-interactive in xmlstarlet

# Current present sections in autoinst.xml
readarray -t PRESENT < <(xmlstarlet sel -N 'yast2ns=http://www.suse.com/1.0/yast2ns' --template -match "//yast2ns:profile/*" --value-of "name()" --nl $AUTOINST)

MISSING=()
for section in "${EXPECTED[@]}"
do
  if [[ ! " ${PRESENT[*]} " =~ " $section " ]]
  then
    MISSING+=($section)
  fi
done

UNEXPECTED=()
for section in "${PRESENT[@]}"
do
  if [[ ! " ${EXPECTED[*]} " =~ " $section " ]]
  then
    UNEXPECTED+=($section)
  fi
done

OK=true
if [[ ${#MISSING[@]} -ne 0 ]]
then
  OK=false
  echo "[DEBUG] missing sections: ${MISSING[*]}"
fi

if [[ ${#UNEXPECTED[@]} -ne 0 ]]
then
  OK=false
  echo "[DEBUG] unexpected sections: ${UNEXPECTED[*]}"
fi

$OK && echo "AUTOYAST OK"
