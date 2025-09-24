#!/bin/bash
# Lab 16: Docker Compose Basics

# Verify Docker Compose installation
docker compose version

# Create project directory
mkdir docker-compose-basics
cd docker-compose-basics

# Create docker-compose.yml (content provided separately)
cat > docker-compose.yml <<EOL
version: '3'
services:
  web:
    image: nginx:latest
    ports:
      - "8080:80"
  app:
    image: alpine
    command: ["echo", "Hello, Docker Compose!"]
EOL

# Start services
docker compose up

# Stop and remove services
docker compose down
