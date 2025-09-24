# Interview Q&A – Lab 12: Bind Mounts vs. Named Volumes

**Q1. What is the difference between a bind mount and a named volume?**  
Bind mounts use host paths directly; named volumes are Docker-managed storage.

**Q2. Where are named volumes stored by default?**  
In `/var/lib/docker/volumes`.

**Q3. Which is better for development?**  
Bind mounts, since they reflect changes instantly from the host.

**Q4. Which is better for production?**  
Named volumes, as they are isolated and reliable.

**Q5. How do you mount a host directory into a container?**  
Using `-v /host/path:/container/path`.

**Q6. Can multiple containers share a named volume?**  
Yes, multiple containers can mount the same volume simultaneously.

**Q7. What happens if you delete a container using a volume?**  
The volume persists until explicitly removed.

**Q8. How do you check details of a volume?**  
`docker volume inspect <volume_name>`

**Q9. Why is `:ro` sometimes added to volume mounts?**  
It makes the mount read-only inside the container.

**Q10. Give a real-world use case for bind mounts.**  
Mounting local source code into a container for live development.
