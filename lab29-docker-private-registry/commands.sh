#!/bin/bash
# Lab 29 – Docker Private Registry Commands

# Step 1: Pull the registry image
docker pull registry:2

# Step 2: Run the registry container
docker run -d -p 5000:5000 --name myregistry registry:2

# Step 3: List images
docker images

# Step 4: Pull Alpine
docker pull alpine:latest

# Step 5: Tag Alpine for the registry
docker tag alpine:latest localhost:5000/myimage

# Step 6: Push Alpine into the registry
docker push localhost:5000/myimage

# Step 7: Verify via registry API
curl -X GET http://localhost:5000/v2/_catalog
