# Troubleshooting – Lab 5

## Issue 1: `docker: command not found`
- Ensure Docker is installed and running.

## Issue 2: Unable to connect to Docker Hub
- Check internet connection.
- Verify Docker daemon is running.

## Issue 3: Permission denied (Linux)
- Add user to docker group:
  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```

## Issue 4: Specific version needed
- Pull with version tag:
  ```bash
  docker pull nginx:1.25
  ```

## Issue 5: Cannot see image history
- Ensure image is pulled first:
  ```bash
  docker pull nginx
  docker history nginx
  ```
