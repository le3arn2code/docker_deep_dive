# Troubleshooting - Lab 24

## Issue 1: Legacy builder warning
```
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
Install the buildx component to build images with BuildKit:
https://docs.docker.com/go/buildx/
```
- **Cause:** Docker defaulted to the legacy builder.
- **Fix:** For future, enable BuildKit by default: `export DOCKER_BUILDKIT=1`.

## Issue 2: Warning about running pip as root
- **Cause:** The container builds as root user by default.
- **Fix:** For simple labs this is fine, but in production use a non-root user.

## Issue 3: Docker Hub Login
- **Cause:** Docker Hub password not accepted.
- **Fix:** Use a **Personal Access Token (PAT)** with `Read & Write` permissions.

## Outcome
All tags (`v1`, `1.0.0`, `1.0.1`, `2025.09.25`, `latest`) successfully pushed and verified on Docker Hub.
