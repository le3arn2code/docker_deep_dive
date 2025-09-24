#!/bin/bash
# Lab 5 – Using Docker Hub and Pulling Images

# Verify Docker installation
docker --version

# Pull nginx image
docker pull nginx

# List images
docker images

# Inspect image layers
docker history nginx
