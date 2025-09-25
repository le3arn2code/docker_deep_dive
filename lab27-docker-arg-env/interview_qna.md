# Interview Q&A – Lab 27 (ARG vs. ENV)

**Q1. What is the difference between ARG and ENV in Docker?**  
A1. ARG is for build-time variables, only available during `docker build`. ENV is for runtime environment variables, available when the container runs.

**Q2. Can ARG values be overridden at runtime?**  
A2. No. ARG is only valid at build-time. Once the image is built, ARG is no longer accessible.

**Q3. Can ENV values be overridden at runtime?**  
A3. Yes. You can override ENV with the `-e` flag when running a container.

**Q4. What’s a good example of using ARG?**  
A4. Specifying a software version (e.g., `ARG NODE_VERSION=18`) during the build.

**Q5. What’s a good example of using ENV?**  
A5. Storing runtime configuration like API keys, database URLs, or environment (dev/prod).

**Q6. Can you use ARG to set an ENV?**  
A6. Yes, by combining ARG with ENV:  
```dockerfile
ARG APP_VERSION=1.0.0
ENV VERSION=$APP_VERSION
```

**Q7. What happens if you don’t provide a value for ARG during build?**  
A7. The default value in the Dockerfile will be used.

**Q8. Is ENV value persisted in the image?**  
A8. Yes. ENV values are baked into the image and can be seen with `docker inspect`.

**Q9. How do you pass ARG at build time?**  
A9. Using `--build-arg NAME=value` with the `docker build` command.

**Q10. How do you check runtime ENV values inside a container?**  
A10. Use `printenv` or `echo $VARNAME` inside the container.
