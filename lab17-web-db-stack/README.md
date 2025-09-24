# Lab 17: Docker Compose for a Web + DB Stack

## Objectives
- Understand the basics of Docker Compose.
- Learn how to define multiple services in a docker-compose.yml file.
- Deploy a simple web application connected to a database.

## Lab Tasks
1. **Create the Docker Compose File**
   - Ensure Docker and Docker Compose are installed:
     ```bash
     docker --version
     docker compose version
     ```
   - Create project directory:
     ```bash
     mkdir web-db-stack && cd web-db-stack
     ```
   - Create and edit the `docker-compose.yml` file.

2. **Run Docker Compose**
   - Start services:
     ```bash
     docker compose up -d
     ```
   - Verify running services:
     ```bash
     docker compose ps
     ```

3. **Test Database**
   - Access MySQL:
     ```bash
     docker compose exec db mysql -u root -p
     ```
   - Enter password: `examplepassword`
   - Show databases:
     ```sql
     SHOW DATABASES;
     ```

4. **Stop Services**
   - Bring down the stack:
     ```bash
     docker compose down
     ```

## Screenshot
The screenshot `lab17-screenshot.png` demonstrates successful execution and database verification.

