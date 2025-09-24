# Interview Q&A - Lab 19 Docker Inspect & Metadata

**Q1: What does `docker inspect` do?**  
A1: It retrieves detailed JSON metadata about a container or image.

**Q2: Which section shows environment variables?**  
A2: The `Config.Env` section.

**Q3: How do you check a container’s IP address?**  
A3: `docker inspect <container_id> | jq '.[0].NetworkSettings.IPAddress'`

**Q4: Where do you find port mappings in inspect output?**  
A4: Inside the `NetworkSettings.Ports` field.

**Q5: What information is shown in the Mounts section?**  
A5: Volume bindings and mount points between host and container.

**Q6: How can inspect help in debugging?**  
A6: By verifying container configs, env variables, mounts, and runtime state.

**Q7: How can inspect be used in CI/CD automation?**  
A7: Scripts can parse inspect JSON to validate config consistency.

**Q8: What does the State section contain?**  
A8: Running status, PID, uptime, restart count, and exit code.

**Q9: What tool helps parse `docker inspect` output?**  
A9: `jq` is commonly used to filter JSON fields.

**Q10: Why is metadata inspection important?**  
A10: It aids in debugging, ensures consistency, and supports automation.

