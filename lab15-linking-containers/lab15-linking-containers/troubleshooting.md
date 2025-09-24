# Troubleshooting – Lab 15: Linking Containers

### Problem 1: `ping` not found inside container
- Some images (e.g., httpd) don’t include ping by default.
- **Solution:** Use a lightweight Alpine container with `apk add iputils`.

### Problem 2: MySQL container exits immediately
- Cause: No root password or misconfigured environment variable.
- **Fix:** Always set `-e MYSQL_ROOT_PASSWORD=my-secret-pw` when running MySQL.

### Problem 3: `--link` warning
- Docker shows warnings because `--link` is deprecated.
- Use user-defined networks (`docker network create`) instead.
