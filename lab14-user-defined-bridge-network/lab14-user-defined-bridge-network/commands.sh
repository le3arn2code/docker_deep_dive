#!/bin/bash
# Lab 14 – Creating a User-Defined Bridge Network

# Create a custom bridge network
docker network create mynet

# Run two containers on the custom network
docker run -d --name container1 --network mynet nginx
docker run -d --name container2 --network mynet nginx

# Open a shell in container1
docker exec -it container1 /bin/sh

# From inside container1 run:
# curl http://container2

# Cleanup
docker rm -f container1 container2
docker network rm mynet
