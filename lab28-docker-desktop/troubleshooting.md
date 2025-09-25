# Troubleshooting – Lab 28 Docker Desktop GUI

## Common Issues

### 1. WSL2 Not Installed (Windows)
- Error: "WSL 2 installation is required."
- Fix: Enable WSL2 in PowerShell:
  ```powershell
  wsl --install
  ```

### 2. Docker Service Not Starting
- Check whale icon → if red, restart Docker Desktop.
- On Windows: Ensure Hyper-V or WSL2 backend is enabled.

### 3. CLI Warnings
- Running commands like `docker ps` without any containers → shows empty list. Not an error.
- Version mismatch warnings: Ensure both Docker CLI and Docker Desktop are updated.

### 4. Overrides Between GUI & CLI
- Stopping a container in the GUI is reflected in CLI (`docker ps`).
- Deleting an image via CLI removes it from GUI as well.
- Always refresh the GUI if CLI changes don’t appear immediately.
