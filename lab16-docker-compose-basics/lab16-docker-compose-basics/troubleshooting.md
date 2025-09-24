# Troubleshooting – Lab 16: Docker Compose Basics

### Problem 1: `docker compose` not found
- **Cause:** Docker Compose plugin not installed.
- **Fix:** Install manually:
  ```bash
  sudo mkdir -p /usr/local/lib/docker/cli-plugins
  sudo curl -SL https://github.com/docker/compose/releases/download/v2.29.7/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose
  sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
  ```

### Problem 2: `docker-compose` vs `docker compose`
- **Cause:** You’re mixing the old `docker-compose` binary with the new plugin.
- **Fix:** Always use:
  ```bash
  docker compose up
  docker compose down
  ```

### Problem 3: `no configuration file provided: not found`
- **Cause:** You ran `docker compose down` from the wrong directory (no `docker-compose.yml` present).
- **Fix:**
  ```bash
  cd ~/docker-compose-basics
  docker compose down
  ```
- Or specify the file explicitly:
  ```bash
  docker compose -f ~/docker-compose-basics/docker-compose.yml down
  ```
