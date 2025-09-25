# Interview Q&A - Lab 23: Minimal Base Images

**Q1. What is a minimal base image?**  
A minimal base image is a lightweight container image containing only the essential components to run an application, reducing size and attack surface.

**Q2. Why is Alpine commonly used as a base image?**  
Because it is lightweight (~5 MB), secure, and uses `apk` as a simple package manager, making it efficient for microservices and cloud deployments.

**Q3. What command installs packages in Alpine Linux?**  
`apk add --no-cache <package>`

**Q4. What are the benefits of using Alpine vs Ubuntu in Docker images?**  
- Smaller size (faster builds, pulls, and deployments).  
- Lower attack surface.  
- More efficient resource usage.

**Q5. When would you prefer Ubuntu over Alpine?**  
When you require broader package support, compatibility, or debugging tools that are not readily available in Alpine.

**Q6. What is the purpose of the `--no-cache` flag in Alpine’s `apk`?**  
It prevents caching of index files, reducing image size and avoiding stale metadata.

**Q7. How do you compare Docker image sizes?**  
By running `docker images` or filtering with `docker images | grep <name>`.

**Q8. Why is smaller image size important in DevOps?**  
It leads to faster CI/CD pipelines, reduced storage costs, quicker deployments, and more efficient scaling in Kubernetes.

**Q9. What security benefits come from minimal images?**  
Fewer installed packages mean fewer potential vulnerabilities and a reduced attack surface.

**Q10. How can you further reduce Docker image sizes?**  
- Use multi-stage builds.  
- Remove unnecessary tools/packages.  
- Use `.dockerignore` to exclude files.  
- Compress layers effectively.
