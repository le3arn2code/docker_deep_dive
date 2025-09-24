#!/bin/bash
# Lab 4 – Listing & Managing Containers

# Pull nginx image
docker pull nginx

# Start nginx container in detached mode
docker run -d --name my_nginx nginx

# List running containers
docker ps

# Stop container
docker stop my_nginx

# Restart container
docker start my_nginx

# Stop and remove container
docker stop my_nginx
docker rm my_nginx

# Verify removal
docker ps -a
