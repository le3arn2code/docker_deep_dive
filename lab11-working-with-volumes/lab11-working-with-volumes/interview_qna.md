# Interview Q&A – Lab 11: Working with Volumes

**Q1. What is a Docker volume?**  
A Docker-managed storage solution for persisting data outside containers.

**Q2. How are volumes different from bind mounts?**  
- Volumes are managed by Docker and stored under `/var/lib/docker/volumes`.  
- Bind mounts map host directories directly.

**Q3. Why are volumes preferred over storing data inside containers?**  
Data inside containers is lost if the container is removed. Volumes persist independently.

**Q4. How do you share data between containers?**  
By mounting the same volume into multiple containers.

**Q5. Where are Docker volumes stored by default?**  
In `/var/lib/docker/volumes` on the host system.

**Q6. Can volumes be backed up?**  
Yes, by mounting the volume into a container and copying files to/from it.

**Q7. What happens if you remove a container using a volume?**  
The data remains intact until the volume itself is removed.

**Q8. How do you list all Docker volumes?**  
`docker volume ls`

**Q9. How do you inspect a volume’s details?**  
`docker volume inspect <volume_name>`

**Q10. Give a real-world use case for volumes.**  
Running a MySQL/Postgres database where data must persist across container restarts.
