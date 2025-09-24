# Lab 20: Docker Healthchecks

## Objectives
- Understand the concept of Docker health checks.
- Implement health checks in a Dockerfile.
- Monitor and interpret health status of Docker containers.
- Learn the benefits of using health checks for automated container management.

## Steps
1. Create a simple Node.js server (`server.js`) that listens on port 3000.
2. Create a `Dockerfile` that includes a `HEALTHCHECK` instruction.
3. Build the Docker image:  
   ```bash
   docker build -t healthcheck-demo .
   ```
4. Run the container:  
   ```bash
   docker run -d --name healthcheck-container -p 80:3000 healthcheck-demo
   ```
5. Verify health status:  
   ```bash
   docker ps --filter "name=healthcheck-container"
   ```
6. Test app response:  
   ```bash
   curl http://localhost
   ```

## Conclusion
You successfully created a container with a built-in health check. The container reports its health via Docker, which is critical for monitoring and orchestration tools like Docker Swarm or Kubernetes.
