# How to Change Linux Boot Target from GUI to Multi-User Mode (systemd Tutorial)

## Description:
In this video, I demonstrate how to verify the current default boot target in Linux using systemd, then change it from graphical.target to multi-user.target. After updating the target, I restart the virtual machine to confirm the system boots into the correct mode.

Next, I switch the system back to graphical.target, reboot the VM again, and verify through the GUI that the graphical environment loads successfully.

## Topics covered:

Checking the default systemd boot target
Switching to multi-user.target
Rebooting and verifying changes
Restoring graphical.target
Testing the graphical login environment

## Commands used:
```
systemctl get-default
sudo systemctl set-default multi-user.target
sudo reboot

sudo systemctl set-default graphical.target
sudo reboot
```
If you found this tutorial helpful, like the video and subscribe for more Linux administration and virtualization content.
