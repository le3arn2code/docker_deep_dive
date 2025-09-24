#!/bin/bash
# Lab 8 – Understanding Image Layers & Caching

# Verify Docker
docker --version

# Setup directory
mkdir docker-image-layers
cd docker-image-layers

# Create dummy package.json files
echo '{ "name": "demo-app", "version": "1.0.0" }' > package.json
echo '{}' > package-lock.json

# Create first Dockerfile
cat > Dockerfile <<'EOF'
FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]
EOF

# Build image
docker build -t my_node_app .

# Create modified Dockerfile (v2)
cat > Dockerfile.v2 <<'EOF'
FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]
EOF

# Build new image with caching
docker build -f Dockerfile.v2 -t my_node_app_v2 .
