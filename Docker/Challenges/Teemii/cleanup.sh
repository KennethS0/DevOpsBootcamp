#!/bin/bash
docker rm -f teemii-backend
docker rm -f teemii-frontend
docker volume rm teemii-data
docker network rm teemii-network