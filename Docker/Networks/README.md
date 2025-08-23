# Networks
Since Docker containers are isolated processes, we need a way to communicate different processes with the container.
Docker virtualizes everything regarding the networkink system. When a container is created, Docker assigns it a unique IP address within a virtual network, allowing containers to communicate with each other and the outside world.
It also offers an internal DNS to communicate easier with other applications.

## Network Drivers
### Bridge (Default value)

Acts as a virtual switch that allows containers to communicate with each other if they are in the same network.
This example shows how to create a bridge:
```
docker network create mybridge
docker run -d --name web --network mybridge nginx
docker run -d --name db --network mybridge postgres
```
This allows `web` to communicate with `db` using `http://db:5432`

Used for local development and production in single host environments.

### Host
This allows the container to use the same IP and Ports as the the host system.

It does not need to use NAT (Network Address Translation), which makes it more efficient, with the downside of being in a less isolated environment that can have conflicting ports.
```
docker run -d --network host nginx
```

Usually used for apps that require high demand such as proxies or monitoring.

### None
There's also the option to run without a Network that loops back to 127.0.0.1 (local), which is useful for completely isolated tasks.

### Overlay
It's used for Multi-Hosting purposes (Docker Swarm, Kubernetes). And it allows containers in different servers to connect as if they were in the same LAN by using VXLAN (Virtual Extensible LAN).

```
docker network create -d overlay myoverlay
```

Typically used in multi-host production environmnents like apps with a microservices infrastructure.

### Macvlan
This allows the container to receive it's own MAC and physical IP address, acting as another Host device in the network. It is used whenever a container needs to be seen as a 'real machine'.
```
docker network create -d macvlan \
  --subnet=192.168.1.0/24 \
  --gateway=192.168.1.1 \
  -o parent=eth0 mymacvlan
```

Usually used for legacy systems that require the container to be accessed as a host.


## Connecting to the network
With the `docker network` command you can manage the networks. And you can also connect containers easily to the network by passing the `--network` flag to the `docker run` command.

You can verify the connection by sending a `ping` over through one of the containers.
