# Troubleshooting - Lab 23

## Issue 1: Legacy builder warning
```
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
Install the buildx component to build images with BuildKit:
https://docs.docker.com/go/buildx/
```
- **Cause:** Docker used legacy builder.
- **Fix:** Install and use BuildKit (`docker buildx build ...`), though the legacy builder still worked for this lab.

## Issue 2: Large image size (Ubuntu)
- Ubuntu-based image was **142MB** compared to Alpine’s **15.5MB**.
- This is expected since Ubuntu includes more system libraries and dependencies.

## Outcome
- Both images built successfully.
- Comparison highlighted Alpine’s efficiency.
