# Interview Q&A – Lab 13: Docker Networking Basics

**Q1. What is the default network created by Docker?**  
The bridge network.

**Q2. How are containers assigned IPs by default?**  
Automatically assigned from the bridge network subnet.

**Q3. How do you find a container’s IP?**  
Using `docker inspect <container>`.

**Q4. Why doesn’t Alpine have ping by default?**  
To keep the image minimal. You must install `iputils`.

**Q5. How do containers communicate on the same bridge network?**  
Via their internal IP addresses.

**Q6. What happens if two containers expose the same port?**  
They can still communicate internally, but host port mapping will conflict.

**Q7. How do you list all networks in Docker?**  
`docker network ls`

**Q8. How do you inspect a network?**  
`docker network inspect <network_name>`

**Q9. What is the difference between default bridge and custom bridge?**  
- Default bridge: requires IP addresses for communication.  
- Custom bridge: supports DNS-based communication by container name.

**Q10. Give a real-world use case of container networking.**  
Microservices (e.g., a web server container connecting to a database container).
