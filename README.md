# 🚀 Docker Deep Dive Labs

Welcome to the **Docker Deep Dive** repository!  
This repo contains a series of hands-on labs designed to help you learn Docker step by step — from beginner basics to advanced use cases like CI/CD.  

Each lab builds on the previous one, giving you a structured learning path.  

---

## 📂 Lab Index

### Fundamentals
1. **Lab 01 – Introduction to Docker Concepts**  
   Understand the key components of Docker and how containers differ from VMs.  

2. **Lab 02 – Installing Docker on Your Machine**  
   Install Docker Engine and CLI for your OS.  

3. **Lab 03 – First Container: Hello World**  
   Run your first container with the classic `hello-world` image.  

4. **Lab 04 – Listing & Managing Containers**  
   Start, stop, and remove containers using Docker CLI commands.  

5. **Lab 05 – Using Docker Hub and Pulling Images**  
   Learn to pull and run images from Docker Hub.  

6. **Lab 06 – Running Interactive Containers**  
   Work with interactive containers using `-it` flags.  

7. **Lab 07 – Dockerfile Basics**  
   Write your first Dockerfile and build custom images.  

8. **Lab 08 – Understanding Image Layers & Caching**  
   Explore how Docker layers work and speed up builds.  

9. **Lab 09 – Environment Variables in Docker**  
   Pass environment variables into containers.  

10. **Lab 10 – Exposing Ports and Running a Web Server**  
    Expose container ports and serve a simple web app.  

---

### Volumes & Networking
11. **Lab 11 – Working with Volumes**  
    Persist container data using volumes.  

12. **Lab 12 – Bind Mounts vs. Named Volumes**  
    Compare and contrast mounts for data management.  

13. **Lab 13 – Docker Networking Basics**  
    Learn container networking fundamentals.  

14. **Lab 14 – User-Defined Bridge Network**  
    Create and use custom bridge networks.  

15. **Lab 15 – Linking Containers**  
    Connect containers directly.  

---

### Docker Compose & Stacks
16. **Lab 16 – Docker Compose Basics**  
    Run multi-container apps using Docker Compose.  

17. **Lab 17 – Docker Compose for a Web + DB Stack**  
    Define and run a full-stack app with Compose.  

18. **Lab 18 – Docker Logs & Debugging**  
    View and debug container logs.  

19. **Lab 19 – Docker Inspect & Metadata**  
    Use `docker inspect` to retrieve container details.  

20. **Lab 20 – Docker Healthchecks**  
    Add healthchecks to containers for reliability.  

21. **Lab 21 – Docker Container Lifecycle Hooks**  
    Manage startup/shutdown hooks in containers.  

22. **Lab 22 – Building from GitHub in Docker**  
    Build images directly from a GitHub repo.  

23. **Lab 23 – Minimal Base Images**  
    Create lightweight images with minimal base layers.  

24. **Lab 24 – Docker Tagging and Versioning**  
    Use proper tagging and version control for images.  

25. **Lab 25 – Docker Prune & Cleanup**  
    Clean up unused images, containers, and volumes.  

26. **Lab 26 – Docker Security Basics**  
    Apply basic security practices for containers.  

27. **Lab 27 – Docker ARG vs. ENV**  
    Learn differences between build-time (`ARG`) and runtime (`ENV`) variables.  

28. **Lab 28 – Docker Desktop GUI (Optional)**  
    Explore Docker Desktop’s GUI for managing containers.  

29. **Lab 29 – Docker Private Registry**  
    Set up and push images to a private Docker registry.  

30. **Lab 30 – Docker CI/CD with Flask, Redis, and Pytest**  
    Build a mini CI/CD pipeline with Docker Compose, Flask, Redis, and Pytest.  

---

## 📖 Usage
Clone this repo:

```bash
git clone https://github.com/le3arn2code/docker_deep_dive.git
cd docker_deep_dive
