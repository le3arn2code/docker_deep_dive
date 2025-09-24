# Lab 15: Linking Containers

## Objectives
- Understand the concept of linking containers in Docker.
- Learn how to use the --link flag to connect two containers.
- Compare container linking with user-defined networks.
- Identify drawbacks of container linking and understand why user-defined networks are recommended.

## Prerequisites
- Basic understanding of Docker and containers.
- Docker installed on your machine.
- Familiarity with command-line operations.

## Lab Tasks

### Task 1: Using --link to Connect Two Containers
1. Pull required Docker images:
   ```bash
   docker pull httpd
   docker pull mysql
   ```
2. Start the database container:
   ```bash
   docker run --name mydb -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql
   ```
3. Link the web server to the database:
   ```bash
   docker run --name myweb --link mydb:mysql -d httpd
   ```

### Task 2: Compare with User-Defined Networks
1. Create a user-defined network:
   ```bash
   docker network create mynetwork
   ```
2. Run containers on the custom network:
   ```bash
   docker run --name mydb --network mynetwork -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql
   docker run --name myweb --network mynetwork -d httpd
   ```

### Task 3: Drawbacks of Linking
- **Obsolete:** `--link` is deprecated.
- **Scalability:** Links don’t scale well compared to networks.
- **Isolation:** Only one-way communication is provided.

## Conclusion
In this lab, you learned how to:
- Link containers using the deprecated `--link` method.
- Use user-defined networks for more efficient communication.
- Understand why Docker networks are preferred in modern setups.
