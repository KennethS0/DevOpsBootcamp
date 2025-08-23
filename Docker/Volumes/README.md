# Volumes
Volumes allow containers to access shared resources to have persistent data accross different containers.
Apart from volumes, there are other ways to share data such as `tmpf mounts` and `bind mounts`.

1. tmpf mounts: Are volatile, since they live in memory.
2. bind mounts: They live in the hosts's filesystem, but they can be accessed by any user outside of the containers that have access to the filesystem.
3. Volumes: They also live in the hosts's filesystem but they are completely managed by Docker.

## Managing volumes
With the command `docker volume` you can create, view and delete any volumes.

1. `docker volume create <name>`: 


## Mounting a volume to a container
With the command `docker run .... -v <volume name>:<data path>`