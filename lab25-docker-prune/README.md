# Lab 25 – Docker Prune & Cleanup

## Objectives
- Understand how to list Docker images and containers.
- Learn how to remove unused Docker resources using prune commands.
- Understand strategies to manage disk usage effectively in a Docker environment.

## What We Did
1. **Listed all images and containers**
   - `docker images`
   - `docker ps -a`

2. **Removed unused resources**
   - `docker image prune` → No dangling images found.
   - `docker image prune -a` → No unused images initially.
   - `docker container prune` → Removed 2 exited containers.
   - `docker volume prune` → No unused volumes found.

3. **Checked disk usage**
   - `docker system df`

4. **System-wide cleanup**
   - `docker system prune` → No reclaimable space initially.
   - `docker system prune --all` → Removed `hello-world` image, reclaimed **10.07kB**.

## Before and After Cleanup
- Before: 1 image (`hello-world`), 2 stopped containers.
- After: All images, containers, and volumes cleaned. Reclaimed 10.07kB.

## Screenshot
![Prune Screenshot](screenshot.png)

---
This lab shows the importance of periodic cleanup in Docker to manage disk space and maintain a healthy environment.
