#!/bin/bash
# Lab 3 – First Container: Hello World

# Verify Docker installation
docker --version

# Pull hello-world image
docker pull hello-world

# Run hello-world container
docker run hello-world
