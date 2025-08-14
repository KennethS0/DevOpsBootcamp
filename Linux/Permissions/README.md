# Permissions
Linux files and directories have 3 different types of permissions:
1. r: Read
2. w: Write
3. x: Execute

And these 3 permissions are set for 3 different types of access which include
1. User
2. Group
3. Others

And they are set in that specific order
`- rwx rwx rwx <owner> <group> <others>`

## User and group Management:
* Create a user: `sudo useradd <username>`
* Set user password: `sudo passwd <username>`
* Create a new group: `sudo groupadd <groupname>`
* Add user to a group: `sudo usermod -aG <groupname> <username>`
* Remove user from group: `sudo gpasswd -d <username>  <groupname>`
* Change user shell: `sudo usermod --shell <shell> <username>`
* Change file owner: `chown <username> <file>`
* Change permissions: `chmod <permissions> <file>`
* Change group of file: `chgrp <group> <file>`

