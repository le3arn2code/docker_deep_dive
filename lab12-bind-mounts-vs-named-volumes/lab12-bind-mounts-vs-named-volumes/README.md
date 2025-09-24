# Lab 12 – Bind Mounts vs. Named Volumes

## 🎯 Objectives
- Understand the differences between bind mounts and named volumes in Docker.
- Learn how to create and use bind mounts.
- Learn how to create and use named volumes.
- Identify scenarios where each storage type is most appropriate.

## 📋 Prerequisites
- Basic understanding of Docker.
- Docker installed and running.
- Access to a terminal or command line interface.

---

## 📝 Lab Tasks

### Task 1: Introduction to Storage in Docker
- **Bind Mounts**: Link a host directory to a container directory.
- **Named Volumes**: Managed by Docker and stored in `/var/lib/docker/volumes`.

---

### Task 2: Create and Use a Bind Mount
#### Task 2.1: Run a Container with a Bind Mount
```bash
mkdir ~/host-directory
echo "Hello from the host!" > ~/host-directory/host-file.txt

docker run -d --name nginx-bind -v ~/host-directory:/usr/share/nginx/html:ro -p 8080:80 nginx
```

#### Task 2.2: Verify the Bind Mount
```bash
curl http://localhost:8080/host-file.txt
```
You should see `Hello from the host!`.

---

### Task 3: Create and Use a Named Volume
#### Task 3.1: Create a Named Volume
```bash
docker volume create my-volume
```

#### Task 3.2: Run a Container Using a Named Volume
```bash
docker run -d --name nginx-volume -v my-volume:/usr/share/nginx/html -p 8081:80 nginx
docker cp ~/host-directory/host-file.txt nginx-volume:/usr/share/nginx/html/
```

#### Task 3.3: Verify the Named Volume
```bash
curl http://localhost:8081/host-file.txt
```

---

### Task 4: Comparison and Use Cases
- **Bind Mounts**:  
  - Immediate reflection of host changes inside the container.  
  - Use Case: Development environments (live code updates).  

- **Named Volumes**:  
  - Isolated, managed by Docker, persists independently of host changes.  
  - Use Case: Production persistence (databases, long-term data).  

---

## ✅ Conclusion
You learned how to:
- Configure and test both bind mounts and named volumes.
- Compare their behaviors and use cases.  
Bind mounts offer flexibility for development, while named volumes provide durability and reliability for production workloads.
