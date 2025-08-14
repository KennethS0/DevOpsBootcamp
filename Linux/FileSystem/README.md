# Linux File System
Everything in Linux is represented by a file.

## Root Hierarchy
1. `/`: Root directory
2. `/etc`: System configurations
    * `/etc/passwd/`: Users and passwords
    * `/etc/hosts/`: Different hosts
    * etc...
3. `/var`: Files that change during OS execution
    * `/var/log`: System logs
    * `/var/tmp`: Temp files
    * `/var/lib`: DB's and apps
4. `/home`: Where user profiles are stored
5. `/usr`: User software
6. `/opt`: Optional software
7. `/bin`: Binary files for commmon commands
8. `/sbin`: Binary files for administrative commands
9. `/lib`: Kernel modules and system libraries

## Mounting
Allows you to access the hard drive of another device (USB, external hard drive, etc...), by linking the device to a directory.

##### Manual Mounting
* Mount device: `sudo mount <device> /mnt/<directory>`
* UnMount device: `sudo umount /mnt/<directory>`

##### Auto Mount
1. Get the UUID from the device with `sudo blkid <device>`
    * Example output `/dev/sdb1: UUID="A1B2-C3D4" TYPE="vfat"`
2. Edit `/etc/fstab` and add the following line:
    * `UUID=A1B2-C3D4  /mnt/usb  vfat  defaults  0  0`
3. Test: `sudo mount -a`