# Interview Q&A – Lab 4: Listing & Managing Containers

**Q1. What does `docker run -d` do?**  
Starts a container in detached (background) mode.

**Q2. Why name a container with `--name`?**  
Easier to reference instead of using container IDs.

**Q3. How to see all running containers?**  
`docker ps`

**Q4. How to see all containers (including stopped)?**  
`docker ps -a`

**Q5. How to stop a container?**  
`docker stop <container_name>`

**Q6. How to restart a container?**  
`docker start <container_name>`

**Q7. How to remove a container?**  
`docker rm <container_name>`

**Q8. What’s the difference between stopping and removing a container?**  
- Stop = container exists but is inactive.  
- Remove = container deleted completely.

**Q9. What happens if you try to remove a running container?**  
It fails unless forced with `docker rm -f`.

**Q10. Why is container lifecycle management important?**  
To free resources and maintain a clean environment.
