# Commands for Lab 20: Docker Healthchecks

# Step 1: Create project directory
mkdir docker-healthcheck-lab
cd docker-healthcheck-lab

# Step 2: Create server.js and package.json, then install dependencies
npm init -y
npm install http

# Step 3: Build Docker image
docker build -t healthcheck-demo .

# Step 4: Run container
docker run -d --name healthcheck-container -p 80:3000 healthcheck-demo

# Step 5: Check health status
docker ps --filter "name=healthcheck-container"

# Step 6: View logs
docker logs healthcheck-container

# Step 7: Test with curl
curl http://localhost
