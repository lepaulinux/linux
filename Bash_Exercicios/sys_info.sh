#!/bin/bash
# The script name is sys_info.sh
# The script is written by Leandro Paulino on March 13, 2026
# The script should be located in /usr/local/bin
# The script show basic system information 

# This command will clean the screen.
/usr/bin/clear
echo "Display Basic System Information"
echo "================================"
echo
echo "The hostname, hardware, and OS information is:"
# This command displays the device information
/usr/bin/hostnamectl
echo
echo "The following users are currently logged in:"
# This command will display de users currently logged into the system.
/usr/bin/who
