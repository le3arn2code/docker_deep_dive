# Interview Q&A – Lab 28 Docker Desktop GUI

### 1. What is Docker Desktop?
Docker Desktop is a GUI-based tool for managing Docker containers, images, and resources on Windows and macOS.

### 2. How does Docker Desktop differ from Docker CLI?
- GUI: User-friendly, visual, great for beginners.
- CLI: Scriptable, automation-friendly, required for advanced DevOps workflows.

### 3. Why does Docker Desktop on Windows require WSL2?
WSL2 provides a lightweight Linux kernel for Docker to run natively on Windows, replacing older Hyper-V dependency.

### 4. Can you manage Docker images using Docker Desktop?
Yes, the Images tab allows viewing, pulling, and removing images.

### 5. How does the GUI reflect CLI actions?
Any container or image created via CLI instantly appears in the GUI (and vice versa).

### 6. What’s a common issue new users face with Docker Desktop?
Docker service not starting due to WSL2 or virtualization not being enabled.

### 7. Why is the CLI still important if Docker Desktop has a GUI?
Automation and CI/CD pipelines rely on CLI commands, which GUIs cannot handle.

### 8. How can Docker Desktop complement DevOps workflows?
Developers can prototype quickly via GUI, while operations rely on CLI scripts for automation and scaling.

### 9. How do you verify Docker Desktop installation?
By checking the whale icon in the system tray and running `docker --version` in a terminal.

### 10. Can Docker Desktop be used in production?
No, Docker Desktop is intended for local development environments. Production deployments use Docker Engine on servers or Kubernetes.
