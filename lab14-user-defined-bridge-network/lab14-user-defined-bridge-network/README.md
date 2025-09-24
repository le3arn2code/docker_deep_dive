# Lab 14 – Creating a User-Defined Bridge Network

## 🎯 Objectives
- Understand the concept and benefits of user-defined bridge networks in Docker.
- Learn how to create a custom bridge network.
- Run Docker containers on a user-defined network.
- Validate connectivity between containers using container names.

## 📋 Prerequisites
- Docker installed and running.
- Basic understanding of Docker containers and networks.

---

## 📝 Lab Tasks

### Task 1: Create a Custom Bridge Network
```bash
docker network create mynet
```

### Task 2: Run Containers on the Custom Network
```bash
docker run -d --name container1 --network mynet nginx
docker run -d --name container2 --network mynet nginx
```

### Task 3: Confirm Inter-Container Communication
```bash
docker exec -it container1 /bin/sh
# Inside container1 run:
curl http://container2
```

---

## 🔑 Key Concepts
- **Default Bridge**: Docker’s built-in network where communication is by IP.  
- **User-Defined Bridge**: Custom network where containers communicate by name.  

---

## ✅ Conclusion
You learned how to:
- Create a user-defined bridge network.  
- Run containers on this network.  
- Validate communication between containers by container name.  
