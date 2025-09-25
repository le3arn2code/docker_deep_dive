#!/bin/bash
# Lab 24: Docker Tagging and Versioning - Commands

# Step 1: Setup project
mkdir lab24-docker-tagging && cd lab24-docker-tagging

# Dockerfile
cat > Dockerfile <<EOF
FROM python:3.8-slim
WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
ENV NAME World
CMD ["python", "app.py"]
EOF

# Requirements
echo "flask" > requirements.txt

# App
cat > app.py <<EOF
from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    name = os.getenv("NAME", "World")
    return f"Hello, {name} from Docker!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
EOF

# Step 2: Build image
docker build -t myapp:v1 .

# Step 3: Login to Docker Hub
docker login

# Step 4: Tag and push images
docker tag myapp:v1 haroonurrasheed/myapp:v1
docker push haroonurrasheed/myapp:v1

docker tag myapp:v1 haroonurrasheed/myapp:1.0.0
docker push haroonurrasheed/myapp:1.0.0

docker tag myapp:v1 haroonurrasheed/myapp:1.0.1
docker push haroonurrasheed/myapp:1.0.1

docker tag myapp:v1 haroonurrasheed/myapp:2025.09.25
docker push haroonurrasheed/myapp:2025.09.25

docker tag myapp:v1 haroonurrasheed/myapp:latest
docker push haroonurrasheed/myapp:latest

# Step 5: Verify
docker images | grep myapp
