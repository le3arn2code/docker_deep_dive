# Interview Q&A - Lab 18

**Q1. What is the purpose of `docker logs`?**  
A1. It retrieves the stdout and stderr output of the container’s main process, useful for debugging.

**Q2. How can you monitor container logs in real-time?**  
A2. By using `docker logs -f <container_name>`.

**Q3. What’s the difference between `docker logs` and `docker exec`?**  
A3. `docker logs` shows application logs, while `docker exec` lets you run commands inside a running container.

**Q4. Why might `ps aux` fail inside a container?**  
A4. Because minimal images like nginx often lack `procps`. Use `docker top` or install `procps` inside.

**Q5. How can you inspect container environment variables?**  
A5. Run `docker exec -it <container> env`.

**Q6. What happens if the container is stopped, can you still get logs?**  
A6. Yes, `docker logs` works even for stopped containers (until removed).

**Q7. How do you troubleshoot a crashing container?**  
A7. Check logs with `docker logs`, run with `--rm -it` for debugging, or inspect events with `docker inspect`.

**Q8. What’s the benefit of using `docker top` instead of `ps`?**  
A8. `docker top` shows container processes directly from the host, without requiring tools inside.

**Q9. Can Docker logs be persisted?**  
A9. Yes, by configuring logging drivers (e.g., `json-file`, `syslog`, `fluentd`).

**Q10. Why is log management critical in production?**  
A10. It ensures visibility, helps detect issues early, supports compliance, and enables effective monitoring/alerting.
