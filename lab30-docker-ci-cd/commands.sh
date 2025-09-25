#!/bin/bash
# Commands used in Lab 30 – Docker CI/CD

# Create project folder
mkdir lab30-docker-ci-cd && cd lab30-docker-ci-cd

# Create Dockerfile, docker-compose.yml, requirements.txt, and app.py
# Build and run services
docker compose up --build

# Test app
curl http://localhost:5000

# Run tests
docker compose run --rm web pytest -v tests/
