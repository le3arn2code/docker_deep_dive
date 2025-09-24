# Lab 5 – Using Docker Hub and Pulling Images

## 🎯 Objectives
- Understand the purpose and functionality of Docker Hub.
- Learn how to search for Docker images on Docker Hub.
- Gain proficiency in pulling images using the `docker pull` command.
- Inspect downloaded images to understand image layers.

## 📋 Prerequisites
- Basic understanding of Docker and its components.
- Docker installed on your system.
- Verify Docker installation:
```bash
docker --version
```

---

## 📝 Lab Tasks

### Task 1: Understanding Docker Hub
- Docker Hub is a centralized platform for building, sharing, and deploying containerized applications.
- It hosts thousands of official and community images.

### Task 2: Searching Docker Hub for an Official Image
1. Open [Docker Hub](https://hub.docker.com) in a browser.
2. Use the search bar to look for the **nginx** official image.
- **Key Concept:** Official images are maintained by Docker or trusted vendors.

### Task 3: Pulling an Image Using `docker pull`
```bash
docker pull nginx
docker images
```
- `docker pull` downloads the image and its layers.  
- `docker images` lists all local images.

### Task 4: Inspecting Image Layers
```bash
docker history nginx
```
- Shows each layer, its size, and the build commands.  
- Helps understand image composition and optimize builds.

---

## ✅ Conclusion
You have:
- Learned what Docker Hub is and how to search it.  
- Pulled an official image (`nginx`).  
- Verified and inspected images locally.  

This knowledge is essential for managing images and preparing for container deployment.
