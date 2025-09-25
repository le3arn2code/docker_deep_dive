#!/bin/bash
# Lab 23: Minimal Base Images - Commands

# Step 1: Create project directory and Dockerfile
mkdir minimal-base-image && cd minimal-base-image
cat > Dockerfile <<EOF
FROM alpine:latest
RUN apk add --no-cache curl bash
EOF

# Step 2: Build Alpine-based image
docker build -t my-alpine-image .

# Step 3: Create Ubuntu-based Dockerfile
cat > Dockerfile.ubuntu <<EOF
FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl bash
EOF

# Step 4: Build Ubuntu-based image
docker build -f Dockerfile.ubuntu -t my-ubuntu-image .

# Step 5: Compare image sizes
docker images | grep 'my-'
