#!/bin/bash
# The script name is cmd_out.sh
# The script is written by Leandro Paulino on March 13, 2026
# The script should be located in /usr/local/bin
# The script uses the command substitution
/usr/bin/clear
SYSNAME=$(hostname)
KERNEL=$(uname -r)
echo "The hostname is $SYSNAME"
echo "The kernel version is $KERNEL"
