#!/bin/bash
# Lab 13 – Docker Networking Basics

# Pull Alpine image
docker pull alpine

# Run two containers on the default bridge network
docker run -d --name container1 alpine sleep 1000
docker run -d --name container2 alpine sleep 1000

# Inspect containers to get IP addresses
docker inspect container1
docker inspect container2

# Install ping utility inside containers
docker exec container1 apk add --no-cache iputils
docker exec container2 apk add --no-cache iputils

# Ping container2 from container1 (replace IP accordingly)
docker exec container1 ping -c 4 [IP_ADDRESS_OF_CONTAINER2]

# Clean up
docker rm -f container1 container2
