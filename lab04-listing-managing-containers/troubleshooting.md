# Troubleshooting – Lab 4

## Issue 1: `docker: command not found`
- Ensure Docker is installed and running.

## Issue 2: `Unable to find image 'nginx' locally`
- Run:
  ```bash
  docker pull nginx
  ```

## Issue 3: Container name already in use
- Remove old container:
  ```bash
  docker rm -f my_nginx
  ```

## Issue 4: `Error response from daemon: No such container: my_nginx`
- Verify container exists:
  ```bash
  docker ps -a
  ```

## Issue 5: Permission denied
- Add user to docker group:
  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```
