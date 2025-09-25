#!/bin/bash
# Lab 25 – Docker Prune & Cleanup Commands

# List images
docker images

# List containers (all)
docker ps -a

# Remove dangling images
docker image prune -f

# Remove all unused images
docker image prune -a -f

# Remove all stopped containers
docker container prune -f

# Remove all unused local volumes
docker volume prune -f

# Check disk usage
docker system df

# System-wide prune
docker system prune -f

# Full prune (including unused networks and images)
docker system prune --all -f
