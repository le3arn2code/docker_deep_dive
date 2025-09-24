#!/bin/bash
# Lab 21 – Docker Container Lifecycle Hooks

# Step 1: Create project directory
mkdir docker-lifecycle-hooks
cd docker-lifecycle-hooks

# Step 2: Create Dockerfile
cat > Dockerfile <<'EOF'
FROM alpine:latest
ENTRYPOINT ["echo"]
CMD ["Hello, world!"]
EOF

# Step 3: Build the image
docker build -t my-echo-app .

# Step 4: Run the container (default CMD)
docker run my-echo-app

# Step 5: Run with custom argument (override CMD)
docker run my-echo-app "Docker is awesome!"
