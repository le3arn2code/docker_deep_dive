# Troubleshooting – Lab 10

## Issue 1: Cannot access http://localhost:8080
- Ensure Docker is running.
- Verify container status:
  ```bash
  docker ps
  ```
- Check firewall/iptables rules.

## Issue 2: Port already in use
- Stop the conflicting service or use another port:
  ```bash
  docker run -d -p 9090:80 httpd
  ```

## Issue 3: Browser shows connection refused
- Ensure container is healthy:
  ```bash
  docker logs <container_id>
  ```

## Issue 4: Multiple containers conflict
- Use unique host ports for each container.

## Issue 5: Container exits immediately
- Check logs:
  ```bash
  docker logs <container_id>
  ```
