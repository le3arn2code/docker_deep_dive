# Troubleshooting – Lab 12

## Issue 1: Permission Denied on Bind Mount
- Ensure the host directory exists and is readable.
- On Linux, check ownership with `ls -l`.

## Issue 2: File Not Found in Container
- Confirm correct path mapping in `-v` flag.
- Use `docker exec -it nginx-bind ls /usr/share/nginx/html` to debug.

## Issue 3: Port Already in Use
- Stop conflicting services or use alternate ports:
  ```bash
  docker run -d -p 9090:80 nginx
  ```

## Issue 4: Named Volume Empty
- Files must be copied manually with `docker cp` or `docker exec`.

## Issue 5: Cleaning Up
- Stop and remove containers:
  ```bash
  docker rm -f nginx-bind nginx-volume
  ```
- Remove volume:
  ```bash
  docker volume rm my-volume
  ```
