# Interview Q&A – Lab 30 Docker CI/CD

1. **What is the benefit of Docker Compose in CI/CD?**
   - It allows defining and running multi-container apps consistently.

2. **Why use pytest in Docker CI/CD?**
   - To ensure automated testing of containerized applications.

3. **How do you share data between services in docker-compose?**
   - Using volumes and defined networks.

4. **Why put tests in a separate `tests/` directory?**
   - For better organization and pytest auto-discovery.

5. **What happens if a test fails in CI/CD?**
   - Pipeline halts, preventing faulty code from deploying.

6. **How do you persist data in Redis container?**
   - By mounting a volume.

7. **How is dependency installed inside the container?**
   - Listed in `requirements.txt`, installed in Dockerfile via `pip install`.

8. **Why use `--rm` when running pytest container?**
   - To remove the test container after execution.

9. **How to optimize Docker build times?**
   - By caching dependencies and ordering layers.

10. **Difference between `docker compose up` and `docker compose run`?**
    - `up`: runs services; `run`: runs a one-off command (like tests).
