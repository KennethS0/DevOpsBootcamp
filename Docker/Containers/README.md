# Builds
In order to build different containers we need several configuration files.

## 1. Creating Dockerfile
It all starts with a configuration file called the `Dockerfile`, in which you create a set of instructions that are then used by the docker builder in order to generate an image.

An easy way to generate dockerfiles can be through `docker init`.

## 2. Creating the image
We can execute the following command in order to generate a new image: `docker build`

## 3. Execute the image