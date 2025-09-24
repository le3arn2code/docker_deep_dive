# Troubleshooting – Lab 3

## Issue 1: `docker: command not found`
- Ensure Docker is installed (see Lab 2).

## Issue 2: Image not found
- Pull manually:
  ```bash
  docker pull hello-world
  ```

## Issue 3: Cannot connect to Docker daemon
- Start Docker service (Linux):
  ```bash
  sudo systemctl start docker
  sudo systemctl enable docker
  ```

## Issue 4: Permission denied (Linux)
- Add user to docker group:
  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```

## Issue 5: No “Hello from Docker!” message
- Restart Docker Desktop (Windows/macOS).  
- Verify daemon status on Linux:
  ```bash
  systemctl status docker
  ```
