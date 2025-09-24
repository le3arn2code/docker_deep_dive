# Interview Q&A – Lab 15: Linking Containers

**Q1: What does the `--link` flag do in Docker?**  
A1: It connects two containers, injecting environment variables and host entries to enable communication.

**Q2: Why is `--link` deprecated?**  
A2: It lacks scalability, only supports one-way links, and is less flexible compared to Docker networks.

**Q3: How can you check if containers are linked?**  
A3: Inspect environment variables in the linked container or use `docker inspect`.

**Q4: What’s the difference between linking and user-defined networks?**  
A4: Links are static and one-way, while networks provide dynamic, two-way communication with DNS support.

**Q5: How do user-defined networks simplify container communication?**  
A5: Containers can reach each other by name without manual aliasing.

**Q6: What is injected into linked containers?**  
A6: Environment variables and host entries for the linked container.

**Q7: Can you scale services with `--link`?**  
A7: No, `--link` doesn’t support scaling efficiently. Networks are required.

**Q8: Why use networks instead of links in production?**  
A8: Networks offer better isolation, scalability, and are supported in orchestration tools like Docker Compose.

**Q9: How do you test connectivity in linked containers?**  
A9: By using tools like `ping` or `curl` inside containers, or checking env variables.

**Q10: What’s a modern alternative to linking containers?**  
A10: Docker user-defined networks or orchestration tools like Docker Compose and Kubernetes.
