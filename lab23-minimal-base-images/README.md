# Lab 23: Minimal Base Images

## Objectives
- Understand the benefits of using minimal base images for containerization.
- Learn how to modify a Dockerfile to utilize an Alpine Linux base image.
- Install only essential packages to keep the image lightweight.
- Compare and contrast the final image size against an Ubuntu-based image.

## Tasks
1. **Alpine Base Image**
   - Created a `Dockerfile` with:
     ```dockerfile
     FROM alpine:latest
     RUN apk add --no-cache curl bash
     ```
   - Built image: `docker build -t my-alpine-image .`

2. **Ubuntu Base Image**
   - Created `Dockerfile.ubuntu` with:
     ```dockerfile
     FROM ubuntu:latest
     RUN apt-get update && apt-get install -y curl bash
     ```
   - Built image: `docker build -f Dockerfile.ubuntu -t my-ubuntu-image .`

3. **Comparison**
   - Compared both images using:
     ```bash
     docker images | grep 'my-'
     ```
   - Result:
     - Alpine: **15.5MB**
     - Ubuntu: **142MB**

## Conclusion
Using Alpine as a minimal base image results in a much smaller footprint (~10x smaller), leading to faster deployments and lower resource consumption.
