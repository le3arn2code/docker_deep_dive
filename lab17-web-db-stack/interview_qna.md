# Interview Q&A – Lab 17: Docker Compose for a Web + DB Stack

**Q1. What is Docker Compose?**  
A tool for defining and running multi-container Docker applications using a YAML configuration file.

**Q2. Why use Docker Compose instead of plain docker run?**  
It simplifies managing multi-container environments by defining services, networks, and volumes in a single file.

**Q3. How do services communicate in Docker Compose?**  
Services are placed in a default network with automatic DNS resolution using service names.

**Q4. What is the role of volumes in this lab?**  
Volumes persist MySQL data beyond container lifecycle.

**Q5. What does `depends_on` do?**  
Ensures the dependent service (`web`) waits for another (`db`) to start.

**Q6. What happens if the DB crashes after startup?**  
The `depends_on` only manages startup order. Healthchecks are required for full resiliency.

**Q7. Why specify environment variables in `docker-compose.yml`?**  
To configure containerized services like MySQL with root password and database.

**Q8. How do you scale services with Compose?**  
Using `docker compose up --scale <service>=<count>`.

**Q9. How to share logs across services?**  
Use `docker compose logs -f` to tail logs from all services.

**Q10. Why is Compose useful in production-like environments?**  
It allows replicating complex setups consistently, aiding testing and development before orchestration platforms like Kubernetes.

