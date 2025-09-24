#!/bin/bash
# Lab 9 – Environment Variables in Docker

# Verify Docker installation
docker --version

# Setup directory
mkdir docker-env-lab
cd docker-env-lab

# Create Dockerfile
cat > Dockerfile <<'EOF'
FROM python:3.8-slim
ENV MYVAR="Hello, Docker!"
CMD ["sh", "-c", "echo $MYVAR"]
EOF

# Build image
docker build -t env-example .

# Run container with default ENV from Dockerfile
docker run env-example

# Run container overriding ENV at runtime
docker run -e MYVAR="Hello from docker run" env-example
