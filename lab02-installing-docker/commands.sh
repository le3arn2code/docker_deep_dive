#!/bin/bash
# Lab 2 – Installing Docker on Your Machine

# Linux (Ubuntu) Example Installation

# Update system
sudo apt-get update

# Install prerequisites
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker
sudo apt-get update
sudo apt-get install -y docker-ce

# Verify installation
docker --version
docker info

# Check Docker daemon status
systemctl status docker
