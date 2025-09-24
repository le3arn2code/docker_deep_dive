# Troubleshooting – Lab 7

## Issue 1: `docker build` fails
- Ensure the file is named `Dockerfile` (case-sensitive).
- Run build from the same directory as the Dockerfile.

## Issue 2: Slow build / package errors
- Update package lists inside Dockerfile:
  ```dockerfile
  RUN apt-get update && apt-get install -y curl
  ```

## Issue 3: Curl not found inside container
- Verify with:
  ```bash
  docker run -it my-ubuntu /bin/bash
  curl --version
  ```
- If missing, rebuild the image.

## Issue 4: Permission denied
- Use `sudo` for Docker commands if needed.

## Issue 5: Container exits immediately
- Use interactive mode:
  ```bash
  docker run -it my-ubuntu /bin/bash
  ```
