# Interview Q&A – Lab 6: Running Interactive Containers

**Q1. What does `docker run -it` do?**  
Starts a container in interactive mode with a terminal.

**Q2. Why combine `-i` and `-t`?**  
`-i` keeps STDIN open, `-t` allocates a terminal. Together they allow shell access.

**Q3. What happens when you exit an interactive container?**  
The container stops unless restarted.

**Q4. How do you check OS info inside a container?**  
Run `cat /etc/os-release`.

**Q5. What’s the difference between interactive and detached modes?**  
- Interactive = attached to your terminal.  
- Detached = runs in background.

**Q6. How do you run a detached container?**  
`docker run -d <image> <command>`

**Q7. How can you list running containers?**  
`docker ps`

**Q8. What happens if a container in detached mode has no process?**  
It exits immediately.

**Q9. Can you attach back to a detached container?**  
Yes, with `docker attach <container_id>`.

**Q10. Why is interactive mode useful?**  
For debugging, testing, and exploring container environments.
