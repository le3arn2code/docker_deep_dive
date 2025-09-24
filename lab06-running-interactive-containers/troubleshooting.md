# Troubleshooting – Lab 6

## Issue 1: Container exits immediately in interactive mode
- Ensure you include `/bin/bash` or another shell:
  ```bash
  docker run -it ubuntu /bin/bash
  ```

## Issue 2: Permission denied
- Add user to docker group:
  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```

## Issue 3: Detached container not visible
- Use:
  ```bash
  docker ps
  ```

## Issue 4: Detached container exits too quickly
- Ensure it runs a process (e.g. `sleep 100`).
