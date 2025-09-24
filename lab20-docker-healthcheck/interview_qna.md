# Lab 20 Interview Q&A

**Q1: What is the purpose of a Docker health check?**  
A1: It allows Docker to determine if a container is healthy and ready to serve traffic, improving automation and reliability.

**Q2: How do you define a health check in a Dockerfile?**  
A2: Using the `HEALTHCHECK` instruction, specifying interval, timeout, retries, and a test command.

**Q3: What happens if a container becomes unhealthy?**  
A3: Docker marks the container as `unhealthy`. Orchestrators like Kubernetes can automatically restart or replace it.

**Q4: Why did we use port 3000 in `server.js` instead of 80?**  
A4: Binding to port 80 requires root privileges. Port 3000 avoids permission issues, then we map it externally with `-p 80:3000`.

**Q5: How do health checks integrate with orchestration tools?**  
A5: Tools like Kubernetes or Swarm use health checks to decide container scheduling, rolling updates, and failover strategies.

**Q6: Can you use multiple health checks per container?**  
A6: No, only one `HEALTHCHECK` is allowed per Dockerfile. For more complex checks, use a script.

**Q7: How can health checks impact deployment strategies?**  
A7: They enable zero-downtime deployments by ensuring new containers are healthy before replacing old ones.

**Q8: What is the default health check status if none is defined?**  
A8: By default, containers are always considered `healthy` if no health check is specified.

**Q9: How do you check a container’s health status?**  
A9: With `docker ps` (shows healthy/unhealthy/starting) or `docker inspect <container_id>`.

**Q10: What command do we use in this lab for health checks?**  
A10: `HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost:3000/ || exit 1`
