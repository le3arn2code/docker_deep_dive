# Troubleshooting – Lab 21 Docker Container Lifecycle Hooks

1. **`docker: command not found`**
   - Ensure Docker is installed and running.
   - Use `docker --version` to confirm installation.

2. **Build fails with `Cannot connect to the Docker daemon`**
   - Start Docker service:
     ```bash
     sudo systemctl start docker
     ```

3. **Output not as expected**
   - Remember:
     - ENTRYPOINT is always executed (`echo`).
     - CMD provides default args (`Hello, world!`).
     - Arguments at runtime override CMD.

4. **Permission Issues**
   - Run commands with `sudo` if required.
