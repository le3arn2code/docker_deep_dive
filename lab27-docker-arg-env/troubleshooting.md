# Troubleshooting Notes – Lab 27

1. **Legacy builder warning**  
   - During `docker build`, a warning appeared:  
     *"The legacy builder is deprecated and will be removed in a future release."*  
   - Solution: This does not affect functionality. To remove the warning, enable BuildKit (`DOCKER_BUILDKIT=1`) or install `buildx`.

2. **ARG not visible at runtime**  
   - By design, `ARG` is only used during build. If you try to access it at runtime, it will not be available.

3. **ENV overriding**  
   - If you want to test different values at runtime, you can override ENV using:  
     ```bash
     docker run --rm -e APP_ENV=staging arg-env-demo
     ```
