#!/bin/bash

sudo apt update
sudo apt intall -y curl git htop

git --version

echo "alias mitop='htop'" >> ./src_file
source ./src_file