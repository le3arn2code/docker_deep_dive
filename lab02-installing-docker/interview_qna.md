# Interview Q&A – Lab 2: Installing Docker on Your Machine

**Q1. How do you install Docker on Windows?**  
Download Docker Desktop, run the installer, and follow the wizard.

**Q2. How do you install Docker on macOS?**  
Download Docker Desktop for Mac, open the .dmg file, drag to Applications, and launch Docker.

**Q3. How do you install Docker on Linux (Ubuntu)?**  
Use apt to add Docker’s repo and install docker-ce package.

**Q4. How do you verify Docker installation?**  
Run `docker --version` and `docker info`.

**Q5. What does `docker info` show?**  
Detailed info: number of containers, images, storage driver, runtime, etc.

**Q6. How to confirm Docker daemon is running on Linux?**  
Run `systemctl status docker`.

**Q7. What if you see 'Cannot connect to the Docker daemon'?**  
Start Docker with `sudo systemctl start docker` or check Docker Desktop is running.

**Q8. Can Docker run on Windows Home?**  
Yes, with WSL2 backend (Docker Desktop supports it).

**Q9. What’s included in Docker Desktop?**  
Docker Engine, CLI, Compose, Kubernetes, Credential Helper, Docker Hub.

**Q10. Why is verifying Docker installation important?**  
It ensures the environment is correctly configured before working with containers.
