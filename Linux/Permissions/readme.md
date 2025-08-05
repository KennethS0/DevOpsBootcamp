## Create a new user:
sudo useradd <username>
sudo passwd <username>

## Create a new group:
sudo groupadd <groupname>

## Add a user to a group:
sudo usermod -aG <groupname> <username>

## Remove user from a group:
sudo gpasswd -d <username>  <groupname>

## Change default shell:
## Shells paths are in /etc/shells
sudo usermod --shell <shell> <username>

## Change a file owner:
chown <username> <file>

## Change file permissions:
chmod <permissions> <file>

## Exercise:

