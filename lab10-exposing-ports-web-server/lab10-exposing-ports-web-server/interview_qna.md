# Interview Q&A – Lab 10: Exposing Ports and Running a Web Server

**Q1. What does `-p 8080:80` mean in Docker run?**  
Maps host port 8080 to container port 80.

**Q2. What’s the default port for HTTP servers like nginx and httpd?**  
Port 80.

**Q3. Why is `-d` used when running containers?**  
Runs container in detached mode (background).

**Q4. How do you check which ports are exposed?**  
Use `docker ps` or `docker inspect <container>`.

**Q5. What happens if the host port is already taken?**  
Container fails to start; you must map to another port.

**Q6. How to run multiple web servers simultaneously?**  
Map each to different host ports (`-p 8080:80`, `-p 9090:80`, etc.).

**Q7. Why is port mapping important in Docker?**  
It allows external access to containerized services.

**Q8. Can you expose multiple ports at once?**  
Yes, e.g. `-p 8080:80 -p 8443:443`.

**Q9. What’s the difference between EXPOSE in Dockerfile and `-p` in run?**  
- `EXPOSE`: documentation/hint inside Dockerfile.  
- `-p`: actual runtime mapping for host access.

**Q10. Give a real-world use case for exposing ports.**  
Hosting a containerized web app accessible from browsers/users.
