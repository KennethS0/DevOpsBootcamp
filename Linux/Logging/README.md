# Logging
Logs are a useful way to keep track of the activity in different applications. In Linux systems they are usually stored in `/var/log`. And there are some important logs that reside there by default such as:

* `/var/log/syslog`: System logs
* `/var/log/messages`: Same role as Syslog but for Fedora and CentOS
* `/var/log/auth.log`: Logins, sudos, ssh, etc...
* `/var/log/kern.log`: Drivers, modules and low level messages.
* `/var/log/dpkg.log`: Package installations

## Monitor logs
You can use any commands mentioned in other section to query inside files and manipulate them BUT NEVER TO EDIT LOG INFORMATION.
* `tail -f <log path>`
* `watch tail -n 10 /var/log/syslog`

Another option is to review the logs through `journalctl`

## dmesg
Allows you to open kernel related messages like hardware interactions such as booting the system, when a disk fails, connecting a device, etc...
* `dmesg | grep -i error`: Shows errors
* `dmesg | grep -i eth`: Shows network interfaces
* `dmesg | grep -i sda`: Shows disks
* `dmesg | grep -i usb`: Shows USB