#!/bin/bash
# Lab 6 – Running Interactive Containers

# Pull Ubuntu image
docker pull ubuntu

# Run container interactively
docker run -it ubuntu /bin/bash

# Inside container: check OS
cat /etc/os-release

# Exit container
exit

# Run detached container example
docker run -d ubuntu sleep 100
