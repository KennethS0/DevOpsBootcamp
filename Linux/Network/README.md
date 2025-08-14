# Networks
Allows you to connect to other servers by sending/receiving packages of data.

## Important commands
* `ping <ip or dns>`: Checks that you have connection and that the DNS is working.
    * Common Errors Found when using ping:
    > Unkown host: DNS problem
    > connect: Network is unreachable: No network
    > Request timeout: Host is down or there is a Firewall

* `curl <website>`: Does HTTP(S) request from the terminal.
* `wget <website>`: Also does HTTP(S) requests, but it's more commonly used for file downloads.

* `netstat`: Visualize different ports, processes using the ports and any established connections
* `ss` (Socket Statistics):  Visualize different ports, processes using the ports and any established connections (More modern solution)


### Routing
A route is defined by which route needs to be used to send a package.

Check where a package will go through:
`ip route get 8.8.8.8` outputs `8.8.8.8 via 172.19.144.1 dev eth0 src 172.19.154.197 uid 1000` which means that it will use the `eth0` interface (port) using the local ip `172.19.154.197` as its source and making the next jump to `172.19.144.1`.

* **Adding routes**: `sudo ip route add 10.10.0.0/24 via 192.168.1.10` Means that `10.10.0.0/24` will only be accessible through `192.168.1.10`.
* **Removing routes**: `sudo ip route del 10.10.0.0/24`


### DNS
Translates domain names into IPs. Linux uses servers defined in `/etc/resolv.conf` to check for DNS.

To check for Domain information use the following command:
* `dig google.com`: This will show you all the information.
* `nslookup google.com`: Less detailed version

To check which DNS you can check the previously mentioned file or in systems with systemd:
* `resolvectl status`


### Firewalls
It's an administration layer over `iptables`/`nftables` that defines which ports are allowed, which services can communicate.

1. `sudo systemctl enable --now firewalld`
2. `sudo firewall-cmd --state`
3. `sudo firewall-cmd --get-active-zones`
4. `sudo firewall-cmd --list-all`