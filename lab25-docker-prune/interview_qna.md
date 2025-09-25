# Interview Q&A – Lab 25 Docker Prune & Cleanup

### 1. What does `docker image prune` do?
Removes dangling images (not tagged and not referenced by any container).

### 2. What’s the difference between `docker image prune` and `docker image prune -a`?
- `docker image prune`: removes only dangling images.
- `docker image prune -a`: removes all unused images, even if tagged but unused.

### 3. How do you remove stopped containers in Docker?
Use `docker container prune`.

### 4. How do you remove unused volumes?
Run `docker volume prune`.

### 5. How do you check Docker disk usage?
Use `docker system df`.

### 6. What’s the purpose of `docker system prune`?
It removes unused containers, networks, images, and build cache.

### 7. What extra does `docker system prune --all` do?
It also removes all unused images, not just dangling ones.

### 8. Why might `docker system prune` show “Total reclaimed space: 0B”?
Because there were no unused resources to clean up.

### 9. How can you automate Docker cleanup?
Use cron jobs (Linux) to schedule prune commands periodically.

### 10. What’s the risk of aggressive pruning (`-a` and `--all`)?
You may delete images you’ll need later, forcing re-pull or rebuild.

---
These Q&A cover core Docker cleanup strategies, useful for DevOps and container management interviews.
