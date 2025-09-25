# Lab 30 – Docker CI/CD

This lab demonstrates how to:
- Build a Flask app with Redis using Docker and Docker Compose
- Add a test suite with pytest
- Run tests inside containers as part of CI/CD workflow

## Steps
1. Write Dockerfile and docker-compose.yml
2. Add Flask app and Redis dependency
3. Create pytest test file in `tests/`
4. Build and run containers with `docker compose up --build`
5. Run tests with `docker compose run --rm web pytest -v tests/`

---
