# Interview Q&A – Lab 26 Docker Security Basics

**Q1. Why is running containers as root dangerous?**  
A1. If compromised, the attacker gains root access to the host via container escape. Non-root limits damage.

**Q2. How do you specify a non-root user in Docker?**  
A2. Using `USER <username>` in the Dockerfile after creating a user with `RUN useradd -m <username>`.

**Q3. What are Linux capabilities in Docker?**  
A3. Fine-grained kernel privileges (e.g., NET_ADMIN, SYS_ADMIN) assigned to processes. Docker allows dropping/adding them.

**Q4. How do you drop container capabilities?**  
A4. Use `docker run --cap-drop=<CAP>` (e.g., `NET_ADMIN`).

**Q5. How do you add capabilities when needed?**  
A5. Use `docker run --cap-add=<CAP>`. Only add minimal required capabilities.

**Q6. Why use Alpine or slim images for security?**  
A6. Smaller attack surface, fewer vulnerabilities, faster to patch.

**Q7. How can you restrict resource usage in Docker?**  
A7. Use flags like `--memory` and `--cpus` when running containers.

**Q8. What tool can you use to scan images for vulnerabilities?**  
A8. Docker Bench Security, Trivy, or Clair.

**Q9. What are some best practices to secure Docker containers?**  
A9. - Run as non-root  
    - Minimize image size  
    - Limit network/port exposure  
    - Apply resource limits  
    - Regular image scanning

**Q10. How do you secure secrets in Docker containers?**  
A10. Avoid embedding in images; use Docker secrets, Vault, or environment variables securely injected at runtime.
