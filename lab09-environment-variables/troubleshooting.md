# Troubleshooting – Lab 9

## Issue 1: "docker: command not found"
- Ensure Docker is installed and running.

## Issue 2: Variable not printing correctly
- Make sure the Dockerfile CMD uses:
  ```dockerfile
  CMD ["sh", "-c", "echo $MYVAR"]
  ```

## Issue 3: Overridden value not showing
- Use `docker run -e` properly:
  ```bash
  docker run -e MYVAR="New Value" env-example
  ```

## Issue 4: Permissions error on build
- Run with `sudo` if Docker requires elevated privileges.

## Issue 5: Old cached image interfering
- Force rebuild without cache:
  ```bash
  docker build --no-cache -t env-example .
  ```
