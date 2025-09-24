# Lab 10 – Exposing Ports and Running a Web Server

## 🎯 Objectives
- Understand how to expose container ports to the host machine.
- Deploy a lightweight web server using containerization.
- Access the web server from the host’s web browser.

## 📋 Prerequisites
- Basic understanding of Docker and containers.
- Docker installed and running.
- CLI access.
- Internet connection to pull images.

---

## 📝 Lab Tasks

### Task 1: Pull a Lightweight Web Server Image
```bash
docker pull httpd
# Or alternatively
docker pull nginx
```

### Task 2: Run the Container with Exposed Port
```bash
# Run Apache httpd server
docker run -d -p 8080:80 httpd

# Or run Nginx server
docker run -d -p 8080:80 nginx
```

- `-p 8080:80` maps host port 8080 → container port 80.  
- `-d` runs in detached (background) mode.

### Task 3: Verify Access
- Open your browser: **http://localhost:8080**  
- You should see the default welcome page of the server.  

Check running containers:
```bash
docker ps
```

---

## 🔑 Key Concepts
- **Docker Image**: Executable package containing software + dependencies.  
- **Containerization**: Encapsulating apps/services in isolated environments.  
- **Port Mapping**: Redirecting traffic from host port → container port.  

---

## ✅ Conclusion
You learned:
- How to pull and run a web server container.  
- How to expose and map ports.  
- How to access a containerized web service from your host machine.  

Next: deploy multi-container applications using Docker networking!
