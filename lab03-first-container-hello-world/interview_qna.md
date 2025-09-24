# Interview Q&A – Lab 3: First Container – Hello World

**Q1. What is the purpose of the hello-world image?**  
To confirm Docker installation and configuration work correctly.

**Q2. What command pulls an image from Docker Hub?**  
`docker pull <image-name>`

**Q3. What does `docker run hello-world` do?**  
It creates and runs a container from the hello-world image.

**Q4. How does Docker Hub fit into this process?**  
It’s the registry Docker fetches images from.

**Q5. What does the message “Hello from Docker!” signify?**  
That Docker Engine and daemon are working correctly.

**Q6. What’s the difference between `docker pull` and `docker run`?**  
- `docker pull`: Downloads image.  
- `docker run`: Downloads if missing, then runs container.

**Q7. How can you check if the hello-world image exists locally?**  
`docker images`

**Q8. What happens if the image isn’t found locally?**  
Docker pulls it from Docker Hub automatically.

**Q9. What concept does this lab validate?**  
Client–daemon communication and container execution.

**Q10. Why is hello-world a good starting point?**  
It’s simple, lightweight, and validates Docker setup.
