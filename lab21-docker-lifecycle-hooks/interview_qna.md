# Interview Q&A – Lab 21 Docker Container Lifecycle Hooks

**Q1: What is the difference between ENTRYPOINT and CMD in Docker?**
- ENTRYPOINT sets the main executable; CMD provides default arguments.

**Q2: Can CMD override ENTRYPOINT?**
- No, CMD cannot override ENTRYPOINT; it only supplies arguments unless ENTRYPOINT is shell form.

**Q3: How do runtime arguments interact with ENTRYPOINT and CMD?**
- Runtime arguments replace CMD but still run with ENTRYPOINT.

**Q4: Why use ENTRYPOINT instead of CMD alone?**
- ENTRYPOINT enforces a specific command execution, ensuring consistency, while CMD alone can be overridden.

**Q5: Can a Dockerfile have both ENTRYPOINT and CMD?**
- Yes, and it’s common. ENTRYPOINT defines the command, CMD provides defaults.

**Q6: What happens if you specify multiple CMD instructions?**
- Only the last CMD takes effect.

**Q7: What happens if you specify multiple ENTRYPOINT instructions?**
- Only the last ENTRYPOINT takes effect.

**Q8: Provide a real-world example of ENTRYPOINT and CMD.**
- ENTRYPOINT: `["python3"]`  
- CMD: `["app.py"]`  
  Running the container executes `python3 app.py`.

**Q9: How does ENTRYPOINT help in container lifecycle hooks?**
- It ensures the main process is always executed, forming the lifecycle start of the container.

**Q10: How can ENTRYPOINT be overridden at runtime?**
- By using the `--entrypoint` flag with `docker run`.
