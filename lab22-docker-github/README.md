# Lab 22: Building from GitHub in Docker

This lab demonstrated how to integrate Docker with GitHub effectively.

## Overview
We created a GitHub repository, added a simple Flask app and Dockerfile, then built and ran the container locally. Finally, we automated builds using GitHub Actions.

## Issues Faced & Fixes
- **Branch mismatch**: Default branch was `main`, we adjusted workflow accordingly.
- **Git author config error**: Fixed with `git config --global user.name` and `git config --global user.email`.
- **Secrets setup**: Added `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` in GitHub repo secrets.
- **Port conflict**: Container already using `5000`, resolved by running on another port (e.g., `5001`).
- **Builder warning**: GitHub Actions automatically cleaned up.

## Conclusion
We successfully built, pushed, and ran the image using GitHub Actions and Docker Hub, handling all errors step by step.
