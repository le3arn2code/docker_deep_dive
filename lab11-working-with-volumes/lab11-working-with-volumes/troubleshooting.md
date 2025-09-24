# Troubleshooting – Lab 11

## Issue 1: `volume create` fails
- Ensure Docker is running.
- Check permissions with `docker info`.

## Issue 2: File not found in volume
- Ensure the correct path is used (`/data/hello.txt`).
- Verify volume is mounted correctly with `docker inspect volcontainer`.

## Issue 3: Cannot remove container
- Use `docker rm -f volcontainer` to force remove.

## Issue 4: Volume not persisting
- Remember: named volumes persist by default until manually removed with:
  ```bash
  docker volume rm myvolume
  ```
