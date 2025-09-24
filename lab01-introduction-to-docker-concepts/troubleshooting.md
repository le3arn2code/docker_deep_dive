# Troubleshooting – Lab 1

## Issue 1: `docker: command not found`
- Docker might not be installed. Install Docker Desktop (Windows/Mac) or Docker Engine (Linux).

## Issue 2: `Cannot connect to the Docker daemon`
- Start Docker service:
  ```bash
  sudo systemctl start docker
  sudo systemctl enable docker
  ```

## Issue 3: Permission Denied (Linux)
- Add user to docker group:
  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```

## Issue 4: `hello-world` image not found
- Pull manually:
  ```bash
  docker pull hello-world
  docker run hello-world
  ```
