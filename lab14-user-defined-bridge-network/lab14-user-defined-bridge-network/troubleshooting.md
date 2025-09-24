# Troubleshooting – Lab 14

## Issue 1: Cannot access container by name
- Ensure both containers are on the same custom network.
- Run `docker network inspect mynet` to confirm.

## Issue 2: curl not found
- Install curl inside container:
  ```bash
  apt-get update && apt-get install -y curl
  ```

## Issue 3: Port conflict on host
- If nginx already bound to a port, avoid mapping host ports or use different ones.

## Issue 4: Network already exists
- Remove existing with:
  ```bash
  docker network rm mynet
  ```
