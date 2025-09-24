# Lab 9 – Environment Variables in Docker

## 🎯 Objectives
- Understand how to use environment variables within Docker containers.
- Configure Docker containers using environment variables.
- Practice setting environment variables in a Dockerfile and via `docker run`.

## 📋 Prerequisites
- Basic knowledge of Docker commands.
- Docker installed and running on your machine.
- Verify installation:
```bash
docker --version
```

---

## 📝 Lab Tasks

### Task 1: Setting Environment Variables in Dockerfile

#### Step 1.1: Create Dockerfile
```dockerfile
# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set an environment variable
ENV MYVAR="Hello, Docker!"

# Command to print the environment variable
CMD ["sh", "-c", "echo $MYVAR"]
```

#### Step 1.2: Build and Run
```bash
docker build -t env-example .
docker run env-example
```
Expected output:
```
Hello, Docker!
```

---

### Task 2: Using `docker run -e` to Override Environment Variables
```bash
docker run -e MYVAR="Hello from docker run" env-example
```
Expected output:
```
Hello from docker run
```

---

## 💡 Why Use Environment Variables?
- Configure applications without changing code.  
- Inject sensitive values (e.g., passwords, keys) securely at runtime.  
- Support dynamic configs in microservices architectures.  

---

## ✅ Conclusion
You learned:
- How to set env variables inside a Dockerfile.  
- How to override them at runtime with `docker run -e`.  

This is a key skill for managing containerized applications in real-world environments.
