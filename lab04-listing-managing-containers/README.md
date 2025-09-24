# Lab 4 – Listing & Managing Containers

## 🎯 Objectives
- Understand how to start containers in the background using Docker.
- Learn how to list running containers and manage their lifecycle.
- Gain hands-on experience with basic Docker commands like:
  - `docker run`
  - `docker ps`
  - `docker stop`
  - `docker start`
  - `docker rm`

## 📋 Prerequisites
- Basic knowledge of Docker.
- Docker installed on your system.

---

## 📝 Lab Tasks

### Task 1: Start a container in the background
```bash
docker pull nginx
docker run -d --name my_nginx nginx
```

### Task 2: List all running containers
```bash
docker ps
```

### Task 3: Stop a running container
```bash
docker stop my_nginx
```

### Task 4: Restart a stopped container
```bash
docker start my_nginx
```

### Task 5: Remove a container to manage lifecycle
```bash
docker stop my_nginx
docker rm my_nginx
docker ps -a
```

---

## ✅ Conclusion
You have learned to:
- Start containers in the background.
- List running containers.
- Stop, restart, and remove containers.

This knowledge is foundational for container lifecycle management.
