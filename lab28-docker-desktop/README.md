# Lab 28 – Docker Desktop GUI (Optional)

## Objectives
- Understand how to install and verify Docker Desktop.
- Learn to navigate Docker Desktop's GUI (Containers & Images panels).
- Recognize how the GUI complements CLI usage for managing Docker resources.

## Prerequisites
- Windows 10/11 or macOS with administrative rights.
- Internet connection for downloading Docker Desktop.
- Basic Docker and CLI knowledge (optional but recommended).

## Tasks

### Task 1: Install and Verify Docker Desktop
1. Download Docker Desktop from the official [Docker website](https://www.docker.com/products/docker-desktop).
2. Install:
   - **Windows**: Ensure WSL2 is enabled.
   - **Mac**: Drag Docker icon to Applications.
3. Verify installation:
   ```bash
   docker --version
   ```
   ✅ Expected output: Installed Docker version.

### Task 2: Navigate the Docker Desktop GUI
1. Open Docker Desktop via the whale icon.
2. **Containers Tab**: View running/stopped containers. Start, stop, or inspect logs.
3. **Images Tab**: View local images, pull new ones, or remove unused ones.

### Task 3: Complement CLI with GUI
- CLI sample:
  ```bash
  docker ps
  ```
  Shows the same running containers visible in the GUI.

## Conclusion
- Docker Desktop GUI helps beginners manage Docker visually.
- CLI remains crucial for automation, scripting, and advanced tasks.
- Best practice: combine GUI for learning and visualization with CLI for automation.
