# Interview Q&A - Lab 24: Docker Tagging and Versioning

**Q1. Why is tagging important in Docker?**  
Tags identify image versions, ensuring consistent deployments and dependency management.

**Q2. What is the default Docker tag if none is specified?**  
`latest`.

**Q3. What are the drawbacks of always using `latest`?**  
It can lead to unpredictability — different environments may pull different images if `latest` changes.

**Q4. Explain semantic versioning in Docker images.**  
Semantic tags (e.g., `1.0.0`) represent major, minor, and patch updates, providing clarity on compatibility.

**Q5. What are date-based tags used for?**  
They reflect the build date (e.g., `2025.09.25`) for traceability and reproducibility.

**Q6. How do you push multiple tags of the same image efficiently?**  
Use `docker tag` for each new tag and `docker push` to upload them. Each push reuses shared layers.

**Q7. Why use slim or minimal base images with tags?**  
They reduce size, speed up deployments, and minimize attack surface.

**Q8. What is the difference between `docker tag` and `docker build -t`?**  
- `docker build -t`: Assigns a tag at build time.  
- `docker tag`: Assigns a new tag to an existing image.

**Q9. How can you ensure backward compatibility with Docker images?**  
Maintain versioned tags (`1.0.0`, `1.0.1`) alongside stable tags (`latest`).

**Q10. How do CI/CD pipelines typically use Docker tags?**  
Pipelines build images, tag them with commit SHA + version, and push to registries to ensure traceability.
