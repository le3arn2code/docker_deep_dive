# Troubleshooting - Lab 18

## Issue: `ps aux` not working
- Cause: Minimal images like nginx don't include `ps` by default.
- Solutions:
  1. Use `docker top my_nginx` from host (recommended).
  2. Install `procps` inside the container:
     - Debian/Ubuntu-based:
       ```bash
       apt-get update && apt-get install -y procps
       ```
     - Alpine-based:
       ```bash
       apk add --no-cache procps
       ```

## Issue: Logs not appearing
- Ensure the container is running:
  ```bash
  docker ps
  ```

## Issue: Container not found
- Check the container name with `docker ps -a`.
- Replace `my_nginx` with the correct name if different.
