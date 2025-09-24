#!/bin/bash
# Lab 12 – Bind Mounts vs. Named Volumes

# Create a directory for bind mount
mkdir -p ~/host-directory
echo "Hello from the host!" > ~/host-directory/host-file.txt

# Run Nginx container with bind mount
docker run -d --name nginx-bind -v ~/host-directory:/usr/share/nginx/html:ro -p 8080:80 nginx

# Verify bind mount
curl http://localhost:8080/host-file.txt

# Create a named volume
docker volume create my-volume

# Run Nginx container with named volume
docker run -d --name nginx-volume -v my-volume:/usr/share/nginx/html -p 8081:80 nginx

# Copy file into named volume
docker cp ~/host-directory/host-file.txt nginx-volume:/usr/share/nginx/html/

# Verify named volume
curl http://localhost:8081/host-file.txt
