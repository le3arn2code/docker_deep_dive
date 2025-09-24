# Interview Q&A – Lab 16: Docker Compose Basics

**Q1: What is Docker Compose used for?**  
A1: To define and manage multi-container Docker applications with a single YAML file.

**Q2: What command starts services in Compose?**  
A2: `docker compose up`.

**Q3: How do you stop and remove containers in Compose?**  
A3: `docker compose down`.

**Q4: What file does Docker Compose look for by default?**  
A4: `docker-compose.yml` in the current directory.

**Q5: How do you specify a custom Compose file?**  
A5: Use `-f`, e.g., `docker compose -f custom.yml up`.

**Q6: How can you run services in the background?**  
A6: Use the `-d` flag: `docker compose up -d`.

**Q7: How does Docker Compose handle networking?**  
A7: It creates a default network where all defined services can communicate by service name.

**Q8: Can Compose scale services?**  
A8: Yes, using `docker compose up --scale service=n`.

**Q9: What’s the difference between v1 and v2 Compose?**  
A9: v1 used the `docker-compose` binary; v2 is a Docker CLI plugin invoked with `docker compose`.

**Q10: Why is Compose important in development workflows?**  
A10: It simplifies managing multiple services (like app + db + cache) with one configuration and command set.
