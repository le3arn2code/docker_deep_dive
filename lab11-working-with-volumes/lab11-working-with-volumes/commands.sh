#!/bin/bash
# Lab 11 – Working with Volumes

# Create a named volume
docker volume create myvolume

# Run a container using the volume
docker run --name volcontainer -v myvolume:/data -d alpine sh -c "echo 'Hello World' > /data/hello.txt"

# Inspect the volume data from the host
docker run --rm -v myvolume:/data alpine cat /data/hello.txt

# Remove the container
docker rm -f volcontainer

# Confirm persistence by reading data again
docker run --rm -v myvolume:/data alpine cat /data/hello.txt
