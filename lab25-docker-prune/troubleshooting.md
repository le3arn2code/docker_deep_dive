# Troubleshooting – Lab 25 Docker Prune & Cleanup

## Common Issues

### 1. Total reclaimed space: 0B
- This means there were no unused resources to delete.
- Example: Running `docker image prune` when no dangling images exist.
- **Solution**: This is expected behavior, no action required.

### 2. Permission Denied
- If prune commands fail with permission issues, prepend with `sudo`.
  - Example: `sudo docker system prune -a`

### 3. Accidentally Deleted Needed Images
- If you pruned an image you need, just rebuild or pull it again:
  - `docker build -t <image:tag> .`
  - `docker pull <repository>/<image>:tag`

---
**Best Practice:** Run prune commands carefully. Always check with `docker system df` before pruning.
