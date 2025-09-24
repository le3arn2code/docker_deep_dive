# Troubleshooting – Lab 17

## Issue: `docker: 'compose' is not a docker command`
- Solution: Use the new syntax for Docker Compose v2:
  ```bash
  docker compose version
  ```

## Issue: `no configuration file provided: not found`
- Ensure you are in the directory containing `docker-compose.yml`.

## Issue: MySQL container fails to start
- Ensure ports are free or remove old containers:
  ```bash
  docker ps -a
  docker rm -f <container_id>
  ```

## Issue: `Access denied for user 'root'`
- Ensure you are using the correct password: `examplepassword`.

