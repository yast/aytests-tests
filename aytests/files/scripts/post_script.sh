#! /bin/bash
set -x
echo "This is an AutoYaST post script test logfile" >/var/log/autoyast_post_script.log || exit 1
exit 0
