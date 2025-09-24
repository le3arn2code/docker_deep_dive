# Lab 3 – First Container: Hello World

## 🎯 Objectives
- Understand the basics of Docker containers.
- Learn how to pull images from Docker Hub.
- Execute and run containers.
- Verify container execution through output interpretation.

## 📋 Prerequisites
- Familiarity with command-line interfaces.
- Docker installed on your system (see Lab 2).

---

## 📝 Lab Steps

### Step 1: Verify Docker Installation
```bash
docker --version
```

### Step 2: Pull the Hello-World Image
```bash
docker pull hello-world
```

### Step 3: Run the Hello-World Container
```bash
docker run hello-world
```

**Expected Output:**  
- Docker greets with a confirmation message.  
- Ends with "Hello from Docker!".  

### Step 4: Analyze the Output
- Confirms client–daemon communication.  
- Validates Docker setup.  

---

## ✅ Conclusion
You have:  
- Verified Docker installation.  
- Pulled and run your first container.  
- Confirmed Docker is working via the “Hello from Docker!” message.  

This marks your first successful Docker container execution!
