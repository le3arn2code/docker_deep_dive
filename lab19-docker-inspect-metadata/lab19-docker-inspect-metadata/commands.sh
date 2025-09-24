#!/bin/bash
# Lab 19: Docker Inspect & Metadata

# Pull and run container
docker pull nginx:latest
docker run -d --name my_nginx nginx:latest

# List containers
docker ps

# Inspect container
docker inspect my_nginx

# Inspect images
docker images
docker inspect $(docker images -q | head -n 1)

# Inspect environment variables
docker inspect my_nginx | jq '.[0].Config.Env'

# Inspect network settings
docker inspect my_nginx | jq '.[0].NetworkSettings'

# Inspect mounts
docker inspect my_nginx | jq '.[0].Mounts'

# Inspect state
docker inspect my_nginx | jq '.[0].State'

# Extract container IP
docker inspect my_nginx | jq '.[0].NetworkSettings.IPAddress'

# Clean up
docker rm -f my_nginx
