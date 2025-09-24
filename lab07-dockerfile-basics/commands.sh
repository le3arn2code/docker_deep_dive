#!/bin/bash
# Lab 7 – Dockerfile Basics

# Create working directory
mkdir dockerfile-basics
cd dockerfile-basics

# Create Dockerfile
cat > Dockerfile <<'EOF'
FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
EOF

# Build the image
docker build -t my-ubuntu .

# Run container interactively
docker run -it my-ubuntu /bin/bash

# Inside container: verify curl
curl --version
