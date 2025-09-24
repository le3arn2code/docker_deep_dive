#!/bin/bash
# Lab 17 Commands – Docker Compose for a Web + DB Stack

# Verify Docker and Docker Compose
docker --version
docker compose version

# Create project directory
mkdir web-db-stack && cd web-db-stack

# Create docker-compose.yml (already provided in repo)
nano docker-compose.yml

# Start services
docker compose up -d

# Verify running services
docker compose ps

# Access MySQL DB
docker compose exec db mysql -u root -p

# Inside MySQL
# SHOW DATABASES;
# exit

# Stop and clean up
docker compose down
