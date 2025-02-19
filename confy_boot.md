# Create comfy dual boot setup

## 1. Save this bash script in a $PATH directory.

``` bash

#!/usr/bin/bash

# Define the target entry for Windows Boot Manager
# [TODO] This string can be extracted automatically 
WINDOWS_ENTRY="Windows Boot Manager (on /dev/nvme0n1p1)"

# Since the Windows Boot Manager entry name changes, check if the entry exists in GRUB configuration
if ! sudo grep -q "$WINDOWS_ENTRY" /boot/grub2/grub.cfg; then
    echo "Error: The specified Windows Boot Manager entry '$WINDOWS_ENTRY' could not be found in GRUB."
    echo "Whereas actual entries are:"
    sudo grep -i "menuentry" /boot/grub2/grub.cfg
    exit 1  # Exit the script with an error code
fi

# Attempt to set the GRUB boot entry
if ! sudo grub2-reboot "$WINDOWS_ENTRY"; then
    echo "Error: Failed to set the boot entry to '$WINDOWS_ENTRY'."
    exit 1  # Exit the script with an error code
fi

# Reboot the system
echo "Rebooting into Windows..."
sudo reboot

```

## 2. Edit sudo file by visudo
Start visudo (sudo file editor)

``` bash

sudo visudo

```

Add this line in the visudo editor
*Relace username with your username*

``` visudo

username ALL=(ALL) NOPASSWD: /usr/sbin/grub2-reboot, /usr/sbin/reboot, /usr/bin/grep

```



