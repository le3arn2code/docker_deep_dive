# Lab 18: Docker Logs & Debugging

## Objectives
- Understand how to view and interpret Docker container logs.
- Learn how to attach and troubleshoot a running container using various Docker commands.
- Gain hands-on experience with Docker logging commands and practices for debugging.

## Prerequisites
- Familiarity with basic Docker concepts like images, containers, and Docker CLI commands.
- A working Docker installation on your system.

## Lab Tasks

### Task 1: Run a Container in the Background
1. Pull an Image:
   ```bash
   docker pull nginx:latest
   ```
2. Run the container:
   ```bash
   docker run -d --name my_nginx nginx:latest
   ```

### Task 2: View Container Logs
1. Access logs:
   ```bash
   docker logs my_nginx
   ```
2. Follow logs in real-time:
   ```bash
   docker logs -f my_nginx
   ```

### Task 3: Troubleshooting with Docker Exec
1. Access container shell:
   ```bash
   docker exec -it my_nginx /bin/bash
   ```
2. Check running processes:
   - From host (recommended, always works):
     ```bash
     docker top my_nginx
     ```
   - Inside the container (if `procps` is available):
     ```bash
     ps aux
     ```
   - To install `procps` if missing:
     ```bash
     apt-get update && apt-get install -y procps   # Debian/Ubuntu-based
     apk add --no-cache procps                     # Alpine-based
     ```
3. Inspect environment variables:
   ```bash
   env
   ```

## Conclusion
You learned how to:
- Use `docker logs` and `docker logs -f` to inspect and monitor logs.
- Use `docker exec` and `docker top` for debugging inside containers.
- Resolve missing utilities (`ps`) in minimal images.
