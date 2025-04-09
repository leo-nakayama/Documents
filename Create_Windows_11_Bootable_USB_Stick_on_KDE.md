# **How to create a Windows 11 bootable USB stick on Ubuntu/Fedora KDE**

1. ### **Format the USB stick**

   1. Launch **KDE Icon (at the left on the taskbar) \> System \> KDE Partition Manager.**  
   2. Delete the existing partition. Thus creates an “unknown” partition.  
   3. Format the “unknown” partition with NTFS.

2. ### **Mount the Windows 11 .iso file**

   1. Locate the downloaded Windows .iso file by the file manager.  
   2. Right click on the .iso file, select “mount” on the appeared menu.  
   3. Make sure a device named “CCCOMA\_\*\*” is newly mounted on the left pane of the file manager.

3. ### **Copy the mounted files in the USB stick**

   1. Copy all the files in “CCCOMA\_\*\*”.  
   2. Paste the copied file in the USB stick that is formatted in step \#1

When the copying is done, the boot USB stick creation is finished.
