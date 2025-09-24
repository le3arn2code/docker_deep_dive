# Lab 19: Docker Inspect & Metadata

## Objectives
- Use `docker inspect` to retrieve metadata for containers and images.
- Explore environment variables, networks, and volumes.
- Apply metadata for debugging and automation.

## Prerequisites
- Docker installed and running (`docker --version`).
- Optional: install `jq` for JSON parsing:  
  ```bash
  sudo apt-get install -y jq
  ```

## Tasks

### Task 1: Inspecting Containers & Images
1. Run a test container:
   ```bash
   docker pull nginx:latest
   docker run -d --name my_nginx nginx:latest
   ```
2. List containers:
   ```bash
   docker ps
   ```
3. Inspect container metadata:
   ```bash
   docker inspect <container_id>
   ```
4. Inspect an image:
   ```bash
   docker images
   docker inspect <image_id>
   ```

### Task 2: Use Cases of Metadata
- Environment Variables:
  ```bash
  docker inspect my_nginx | jq '.[0].Config.Env'
  ```
- Network Settings:
  ```bash
  docker inspect my_nginx | jq '.[0].NetworkSettings'
  ```
- Mounts:
  ```bash
  docker inspect my_nginx | jq '.[0].Mounts'
  ```

### Task 3: Debugging & Automation
- Debugging container state:
  ```bash
  docker inspect my_nginx | jq '.[0].State'
  ```
- Automating with jq (example CI/CD use):
  ```bash
  docker inspect my_nginx | jq '.[0].NetworkSettings.IPAddress'
  ```

### Task 4: Clean Up
```bash
docker rm -f my_nginx
```

## Conclusion
You inspected containers and images, explored environment variables, networking, volumes, and practiced debugging/automation. Mastering `docker inspect` enables better troubleshooting and consistency in deployments.
