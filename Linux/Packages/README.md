# Package Management
A package manager allows you to install, analyze, find or remove software easily by managing dependencies.

And there are several package managers such as apt and dpkg.

1. `apt`: Stands for *Advanced Package Tool* and it's in charge of maintaining packages that are defined in `/etc/apt/sources.list`
```
sudo apt update             # Updates packages
sudo apt upgrade            # Installs the latest versions
sudo apt install nginx      # Installs 'nginx'
sudo apt remove nginx       # Removes the package, but keeps the config files
sudo apt purge nginx        # Removes the package AND the config files
sudo apt autoremove         # Eliminates dependencies
sudo apt clean              # Removes the cache
sudo apt autoclean          # Removes packages that are no longer available
```


2. `dpkg`: Installs `.deb` dependencies without solving dependencies.
```
sudo dpkg -i paquete.deb    # Installs .deb file
sudo dpkg -r nombre_paquete # Removes a package
dpkg -l                     # Shows the installed packages
dpkg -s nginx               # Shows details of a package
```

## Malicious Malware Advice
If you install a package that does not come with a GPG key, `apt` will issue a warning. 
`gpg --dearmor < key.gpg > /usr/share/keyrings/keyfile.gpg`