# Lab 1 – Introduction to Docker Concepts

## 🎯 Objectives
- Understand the key components of Docker.
- Differentiate between Docker and traditional Virtual Machines.
- Explore the role of containers in a DevOps pipeline.

## 📋 Prerequisites
- Basic knowledge of the command line interface.
- Familiarity with Linux-based operating systems.
- A computer with Docker Desktop installed.

---

## 📝 Lab Tasks

### Task 1: Review Docker's Key Components

#### Subtask 1.1: Understand the Docker Engine
Docker Engine is the core component of Docker, responsible for creating and running containers. It consists of:
- **Docker Daemon**: Manages Docker objects (images, containers, networks, volumes).
- **Docker Client**: CLI that users interact with.

Verify installation:
```bash
docker --version
```

#### Subtask 1.2: Explore Docker Images
Docker images are read-only templates used to create Docker containers.

List available images:
```bash
docker images
```

Pull an image:
```bash
docker pull hello-world
```

#### Subtask 1.3: Understand Docker Containers
Docker containers are lightweight, portable encapsulations of an environment.

Run a container:
```bash
docker run hello-world
```

#### Subtask 1.4: Learn About Docker Registries
A Docker registry stores and distributes images.
- **Docker Hub** = default public registry
- **Private registries** = secure enterprise hosting

Search images:
```bash
docker search ubuntu
```

---

### Task 2: Docker vs Virtual Machines

| Feature       | Docker Containers              | Virtual Machines                  |
|---------------|-------------------------------|-----------------------------------|
| Architecture  | Share host OS kernel          | Each VM includes a full OS        |
| Performance   | Faster, lower resource usage  | Slower, overhead of multiple OS   |
| Portability   | Highly portable               | Less portable, tied to VM images  |

---

### Task 3: Containers in a DevOps Pipeline

- **Continuous Integration (CI):** Test and integrate code in standardized containers.  
- **Continuous Deployment (CD):** Reliable deployments with identical environments.  

**Example Workflow:**
1. **Build:** Containerize the application.  
2. **Test:** Run tests in container.  
3. **Deploy:** Push container to production.  

---

## ✅ Conclusion
You have:
- Reviewed Docker’s key components.  
- Understood Docker vs VMs.  
- Learned containers’ role in DevOps pipelines.  

This foundation prepares you to use Docker in real-world scenarios.
