# Docker
An open-source platform that allows developers to ship applications in containers. A container is a software unit that has all the necessary environments, tools, dependencies, libraries and configurations for an application to run anywhere no matter the hardward or OS differences.  

Docker is very scalable in the sense that we can execute 'n' amount of containers at once.

## 1. Key Concepts
----
### Dockerfile
File that contains the instructions necessary to create a Docker Image.

### Docker Image
Is an independent package that contains all the necessary dependencies, code and configurations.
Images are versioned through tags (similar to GitHub's commit ids).

### Container
Is an executed instance of a Docker Image.

### Docker Register
Repository centralized to store and distribute Docker Images. Docker Hub is the most popular one, but it is possible to create your own Docker Register.

### Volumes
Is a persistent way of storing data that can be mounted on containers for persistance and sharing between different containers.

## 2. Getting Images
---
### How it works:
1. Docker first checks for any cached images in the Host.
2. If the image is not in the host, then the image is looked up in the registry.

### DockerHub Predefined Images:
We can get images from DockerHub that have been created by other people through `docker pull`.
1. `docker pull <image>`
2. Check images with `docker images` 


## 3. Managing containers
---
Run a container based on an image with `docker run`. Check for any running containers with `docker ps` or `docker ps -a`. Remove containers by using `docker stop` and then `docker rm <id>`

### 4. Accessing containers
---
Using the command `docker exec` we can execute commands directly in the container that is running.

We can send a command to execute using the following cmd `docker exec -it <name> sh -c "<cmd>"` or access the containter's shell with `docker exec -it todo sh`.

### 5. Container Logging
---
With `docker logs` you can view any logs and using any one of the querying features that it offers.