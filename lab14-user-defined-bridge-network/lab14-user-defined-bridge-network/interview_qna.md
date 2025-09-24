# Interview Q&A – Lab 14: User-Defined Bridge Networks

**Q1. What’s the difference between default and user-defined bridge networks?**  
Default bridge requires IPs, user-defined allows name-based communication.

**Q2. Why use user-defined networks?**  
For better isolation, flexibility, and easier service discovery.

**Q3. How do containers resolve names on a custom bridge?**  
Docker provides an internal DNS that maps container names.

**Q4. Can containers join multiple networks?**  
Yes, you can connect a container to more than one network.

**Q5. How do you list Docker networks?**  
`docker network ls`

**Q6. How do you inspect a network’s details?**  
`docker network inspect <network_name>`

**Q7. How do you remove a network?**  
`docker network rm <network_name>`

**Q8. What happens if you remove a network while containers are still attached?**  
Docker prevents removal until containers are disconnected.

**Q9. Can containers on different networks talk directly?**  
Not unless connected via the same network or configured with extra routing.

**Q10. Real-world use case?**  
A web app (container1) communicating with a database (container2) using service names.
