# Services
It's a process that is being execute in the background.

* `systemctl`: This command allows you to manage your services.
### Manage Specific services
```
sudo systemctl start nginx     
sudo systemctl stop nginx      
sudo systemctl restart nginx   
sudo systemctl enable nginx
sudo systemctl disable nginx
systemctl is-enabled nginx
```

### Check Services
```
systemctl list-units --type=service --state=running
systemctl list-units --type=service
```

### Check logs
```
journalctl -u nginx
```

### Creating a service.
This directory contains the files necessary to create a test service.
1. Create a script to run. In this case it is `test_service.sh`. Make sure it is executable and either copy it or move it to the /usr/local/bin directory.
2. Services should be in /etc/systemd/system/<servicename>.service , so create that file and copy the contents of `test_service.service`.
3. Re-launch service daemons with `sudo systemctl daemon-reexec` and `sudo systemctl daemon-reload`
4. Enable the service `sudo systemctl enable test_service.service`
5. Start the service `sudo systemctl start test_service.service`
6. Monitor the service `systemctl status test_service`
7. Check the log `tail -f /var/log/test_service.log`

### Stopping and deleting a service
1. `sudo systemctl stop test_service`
2. `sudo systemctl disable test_service`
3. `sudo rm /etc/systemd/system/test_service.service`
4. `sudo systemctl daemon-reload`

### Check service logs
1. `journalctl -u my_service`
2. Check latest errors: `journalctl -xe`