# Lab 11 – Working with Volumes

## 🎯 Objectives
- Understand how Docker volumes work and their importance in data persistence.
- Learn how to create, manage, and inspect Docker volumes.
- Use Docker volumes to share data between containers and the host.

## 📋 Prerequisites
- Basic understanding of Docker concepts.
- Docker installed and running.

---

## 📝 Lab Tasks

### Task 1: Create a Named Volume
```bash
docker volume create myvolume
```
Creates a Docker-managed volume called `myvolume`.

---

### Task 2: Run a Container Using the Volume
```bash
docker run --name volcontainer -v myvolume:/data -d alpine sh -c "echo 'Hello World' > /data/hello.txt"
```
- `-v myvolume:/data`: Mounts the named volume into `/data` inside the container.  
- Writes `hello.txt` into the volume.

---

### Task 3: Inspect the Volume Data from the Host
```bash
docker run --rm -v myvolume:/data alpine cat /data/hello.txt
```
Runs a temporary container, mounts the same volume, and prints the contents.

---

### Task 4: Remove Container and Confirm Persistence
```bash
docker rm -f volcontainer
docker run --rm -v myvolume:/data alpine cat /data/hello.txt
```
Even after removing the container, the data still exists in the volume.

---

## 🔑 Key Concepts
- **Docker Volume**: Special storage managed by Docker, independent of containers.  
- **Persistence**: Data in volumes is preserved even if containers are removed.  
- **Sharing**: Volumes can be mounted in multiple containers.

---

## ✅ Conclusion
You learned:
- How to create and mount a Docker volume.
- How to persist and access data across containers.
- Why volumes are essential for stateful applications (e.g., databases).  
