# Interview Q&A – Lab 7: Dockerfile Basics

**Q1. What is a Dockerfile?**  
A script with instructions to build a Docker image.

**Q2. What does `FROM` do?**  
Defines the base image for the Dockerfile.

**Q3. What does `RUN` do?**  
Executes commands in the container at build time.

**Q4. Why use Dockerfiles?**  
For automation, repeatability, and consistency.

**Q5. How do you build an image from a Dockerfile?**  
`docker build -t <name> .`

**Q6. What does `-t` flag in `docker build` mean?**  
Tags the image with a name.

**Q7. Where should the Dockerfile be located?**  
In the build context directory (typically project root).

**Q8. How to check if curl was installed in the container?**  
Run `curl --version` inside the container.

**Q9. What’s the difference between `RUN` and `CMD`?**  
- `RUN`: executes at build time.  
- `CMD`: runs when the container starts.

**Q10. What happens if no base image is specified?**  
Build fails; a base image (like Ubuntu, Alpine) is required.
