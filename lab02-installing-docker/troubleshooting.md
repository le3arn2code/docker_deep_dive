# Troubleshooting – Lab 2

## Issue 1: Docker command not found
- Ensure installation completed successfully.  
- On Linux, verify Docker Engine package is installed:
  ```bash
  sudo apt-get install -y docker-ce
  ```

## Issue 2: Docker daemon not running
- On Linux:
  ```bash
  sudo systemctl start docker
  sudo systemctl enable docker
  ```

## Issue 3: Permission denied (Linux)
- Add your user to the docker group:
  ```bash
  sudo usermod -aG docker $USER
  newgrp docker
  ```

## Issue 4: Windows/macOS Docker icon not showing
- Restart Docker Desktop.  
- Ensure virtualization (Hyper-V on Windows) is enabled in BIOS and system settings.
