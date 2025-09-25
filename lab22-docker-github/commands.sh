#!/bin/bash
# Clone repo
git clone https://github.com/le3arn2code/docker_dd_lab22.git
cd docker_dd_lab22

# Configure git identity
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Build image locally
docker build -t my-flask-app .

# Run on default port
docker run -d -p 5000:5000 my-flask-app

# If port conflict, run on different port
docker run -d -p 5001:5000 my-flask-app

# GitHub Actions workflow dispatch
gh workflow run "Docker Image CI"

# Check workflow runs
gh run list --workflow=docker-image.yml --limit 5

# View logs
gh run view <run_id> --log

# Pull image from Docker Hub
docker pull haroonurrasheed/docker_dd_lab22:latest

# Run pulled image
docker run -d -p 5002:5000 haroonurrasheed/docker_dd_lab22:latest
