# Troubleshooting – Lab 13

## Issue 1: Containers cannot ping each other
- Ensure both are on the default bridge network.
- Re-check IP addresses with `docker inspect`.

## Issue 2: Ping not available
- Install `iputils` inside Alpine containers using:
  ```bash
  docker exec container1 apk add --no-cache iputils
  ```

## Issue 3: IP address changes
- Container IPs may change if restarted. Always use `docker inspect` to fetch the latest.

## Issue 4: Container not found
- Ensure the container is running: `docker ps`.

## Issue 5: Clean-up problems
- Use `docker rm -f container1 container2` to force remove.
