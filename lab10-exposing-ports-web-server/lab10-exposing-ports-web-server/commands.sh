#!/bin/bash
# Lab 10 – Exposing Ports and Running a Web Server

# Pull Apache httpd image
docker pull httpd

# Pull Nginx image (optional)
docker pull nginx

# Run httpd container, map host:8080 to container:80
docker run -d -p 8080:80 httpd

# Or run nginx container
docker run -d -p 8080:80 nginx

# Verify running containers
docker ps

# Access in browser at http://localhost:8080
