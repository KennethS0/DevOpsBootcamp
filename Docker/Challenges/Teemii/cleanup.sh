#!/bin/bash
if [[ "$1" == "rmf" ]]; then
    echo 'Force Removing Backend Container...'; docker rm -f teemii-backend > /dev/null 2>&1
    echo 'Force Removing Frontend Container...'; docker rm -f teemii-frontend > /dev/null 2>&1
    echo 'Force Removing Volume...'; docker volume rm teemii-data > /dev/null 2>&1
    echo 'Force Removing Network...'; docker network rm teemii-network > /dev/null 2>&1
elif [[ "$1" == "rm" ]]; then
    echo 'Stopping Backend Container...'; docker stop teemii-backend > /dev/null 2>&1
    echo 'Stopping Frontend Container...'; docker stop teemii-frontend > /dev/null 2>&1 
    echo 'Removing Backend Container...'; docker rm teemii-backend > /dev/null 2>&1
    echo 'Removing Frontend Container...'; docker rm teemii-frontend > /dev/null 2>&1
fi


