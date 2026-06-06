
In this video, I demonstrate how to customize the Linux primary command prompt (PS1) and make the change persistent across login sessions.

## Topics covered:
- Viewing environment variables with the env command
- Finding specific environment variables using grep
- Examining values such as LOGNAME, HOSTNAME, and PWD
- Testing a custom prompt using the export command
- Understanding why temporary prompt changes disappear after logout
- Saving PS1 settings in the .bashrc file for persistence
- Verifying the configuration by logging out and back in

Commands used in the video:
```bash

env | grep -E '^(LOGNAME|HOSTNAME|PWD)='

```

Temporary prompt customization:
```bassh

export PS1="<$LOGNAME on $(hostname) in \$PWD> "

```

Persistent prompt customization in .bashrc:
```bash

PS1="<$LOGNAME on $(hostname) in \$PWD> "

```
 
After updating .bashrc, I log out of the SSH session and reconnect to confirm that the custom prompt is automatically loaded.

This tutorial is ideal for Linux beginners, system administrators, and anyone interested in personalizing their shell environment.