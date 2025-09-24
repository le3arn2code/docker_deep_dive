# Lab 16: Docker Compose Basics

## Objectives
- Understand the fundamentals of Docker Compose.
- Learn how to create and configure a docker-compose.yml file.
- Deploy and manage multi-container Docker applications using Docker Compose.

## Prerequisites
- Basic knowledge of Docker and containerization.
- Docker Engine installed on your machine.
- Docker Compose plugin (v2) installed. Verify with:
  ```bash
  docker compose version
  ```
- Text editor of your choice (e.g., nano, VSCode).

## Lab Tasks

### Task 1: Install Docker Compose (if required)
Check if Docker Compose is installed:
```bash
docker compose version
```
If not found, follow the official installation instructions.

### Task 2: Create a Simple docker-compose.yml File
1. Create a project directory:
   ```bash
   mkdir docker-compose-basics
   cd docker-compose-basics
   ```
2. Create a file named `docker-compose.yml` with the following content:
   ```yaml
   version: '3'
   services:
     web:
       image: nginx:latest
       ports:
         - "8080:80"
     app:
       image: alpine
       command: ["echo", "Hello, Docker Compose!"]
   ```

### Task 3: Start Services with Docker Compose
1. Run:
   ```bash
   docker compose up
   ```
2. Verify in your browser at [http://localhost:8080](http://localhost:8080).
3. Observe logs for both containers.
4. Stop and clean up:
   ```bash
   docker compose down
   ```

## Conclusion
In this lab, you learned the basics of Docker Compose, created a simple multi-service setup, and managed it with `docker compose up` and `docker compose down`. This foundation prepares you for more advanced Compose use cases in development and production.
