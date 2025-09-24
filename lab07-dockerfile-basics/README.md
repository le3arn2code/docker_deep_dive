# Lab 7 – Dockerfile Basics

## 🎯 Objectives
- Understand the purpose and structure of a Dockerfile.
- Learn to create a simple Dockerfile using a base image.
- Install necessary packages using Dockerfile instructions.
- Build and run a custom Docker image.

## 📋 Prerequisites
- Basic understanding of Docker and its components.
- Docker installed and running on your machine.

---

## 📝 Lab Tasks

### Step 1: Introduction to Dockerfile
A **Dockerfile** is a text document that contains all commands needed to build a Docker image.  
It ensures repeatability and consistency across environments.

### Step 2: Creating a Simple Dockerfile
Create a file named `Dockerfile` with this content:
```dockerfile
# Use Ubuntu as the base image
FROM ubuntu:latest
```

### Step 3: Adding Commands to Install Packages
Add the following line to install `curl`:
```dockerfile
# Update the package list and install curl
RUN apt-get update && apt-get install -y curl
```

Final Dockerfile:
```dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
```

### Step 4: Building the Docker Image
```bash
docker build -t my-ubuntu .
```

### Step 5: Running a Docker Container
```bash
docker run -it my-ubuntu /bin/bash
```

Inside the container, verify curl:
```bash
curl --version
```

---

## ✅ Conclusion
You have:
- Created a Dockerfile.
- Installed software via `RUN`.
- Built a custom image.
- Ran and verified a container.  

This demonstrates the foundation of reproducible builds using Dockerfiles.
