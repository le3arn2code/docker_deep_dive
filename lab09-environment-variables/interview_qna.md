# Interview Q&A – Lab 9: Environment Variables in Docker

**Q1. What is the purpose of ENV in a Dockerfile?**  
Defines default environment variables baked into the image.

**Q2. How can you override an ENV variable at runtime?**  
With `docker run -e VAR=value`.

**Q3. Why are env variables useful in containers?**  
For configuration without changing source code.

**Q4. Can you define multiple ENV variables in a Dockerfile?**  
Yes, by writing multiple `ENV` instructions or a single line with multiple values.

**Q5. What’s the difference between ARG and ENV in Dockerfile?**  
- `ARG`: available only at build time.  
- `ENV`: persists in the built image and at runtime.

**Q6. How can you list all environment variables inside a container?**  
Run `env` or `printenv` inside the container.

**Q7. Are env variables secure in Docker?**  
Not fully; they can be seen with `docker inspect`. Better use Docker secrets for sensitive values.

**Q8. What happens if both Dockerfile ENV and `docker run -e` are set?**  
The runtime `-e` value takes precedence.

**Q9. How do env variables support microservices?**  
They enable dynamic configs and service-to-service communication without hardcoding values.

**Q10. Give a real-world example of using env variables in Docker.**  
Setting `DB_HOST`, `DB_USER`, and `DB_PASS` in a containerized database client.
