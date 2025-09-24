# Interview Q&A – Lab 5: Using Docker Hub and Pulling Images

**Q1. What is Docker Hub?**  
A centralized registry for sharing and distributing container images.

**Q2. What are official images?**  
Images maintained by Docker or trusted organizations, e.g., nginx, mysql.

**Q3. How do you pull an image?**  
`docker pull <image-name>`

**Q4. What happens if no tag is specified?**  
Docker pulls the `latest` tag by default.

**Q5. How do you list local images?**  
`docker images`

**Q6. What does `docker history` do?**  
Shows image layers, sizes, and build commands.

**Q7. Why are image layers important?**  
They enable caching and optimize builds by reusing unchanged layers.

**Q8. Can you pull a specific image version?**  
Yes, e.g. `docker pull nginx:1.23`.

**Q9. What’s the difference between Docker Hub and private registries?**  
Docker Hub is public, private registries are for secure, internal image hosting.

**Q10. Why inspect image layers?**  
To understand how an image is built and optimize size/security.
