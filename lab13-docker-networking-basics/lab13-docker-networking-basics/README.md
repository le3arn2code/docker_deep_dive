# Lab 13 – Docker Networking Basics

## 🎯 Objectives
- Understand the basics of Docker networking.
- Learn how to connect Docker containers on the same network.
- Use Docker CLI commands to explore and manipulate container networks.

## 📋 Prerequisites
- Docker installed on your machine.
- Basic understanding of Docker containers and CLI.
- Internet connection.

---

## 📝 Lab Tasks

### Task 1: Launch Two Containers on the Default Bridge Network
```bash
docker pull alpine
docker run -d --name container1 alpine sleep 1000
docker run -d --name container2 alpine sleep 1000
```

---

### Task 2: Use `docker inspect` to Find Assigned IPs
```bash
docker inspect container1
docker inspect container2
```

- Look for `"IPAddress"` under `"NetworkSettings"`.  
  Example: `"IPAddress": "172.17.0.2"`

---

### Task 3: Verify Connectivity
1. Install ping utility (Alpine doesn’t include it by default):
```bash
docker exec container1 apk add --no-cache iputils
docker exec container2 apk add --no-cache iputils
```

2. Ping container2 from container1:
```bash
docker exec container1 ping -c 4 [IP_ADDRESS_OF_CONTAINER2]
```

Replace `[IP_ADDRESS_OF_CONTAINER2]` with the actual IP retrieved via `docker inspect`.

---

### Task 4: Clean Up
```bash
docker rm -f container1 container2
```

---

## 🔑 Key Concepts
- **Bridge Network**: The default network for containers.  
- **Container IPs**: Assigned automatically within the bridge network.  
- **Inter-Container Communication**: Containers can ping each other on the same network.

---

## ✅ Conclusion
You learned:
- How to run containers on the default Docker bridge network.
- How to find their IP addresses using `docker inspect`.
- How to test connectivity using ping.  

This foundation sets you up for exploring custom Docker networks and multi-host networking.
