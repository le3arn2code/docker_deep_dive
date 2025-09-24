# Lab 6 – Running Interactive Containers

## 🎯 Objectives
- Understand how to run an interactive Docker container.
- Learn to explore and interact with a Linux container environment.
- Differentiate between interactive and detached container modes.

## 📋 Prerequisites
- Basic understanding of Docker architecture.
- Docker installed on your system.
- Basic knowledge of command-line operations.

---

## 📝 Lab Tasks

### Task 1: Run an Ubuntu Container Interactively
```bash
docker pull ubuntu
docker run -it ubuntu /bin/bash
```
- `-i` = interactive mode  
- `-t` = allocate TTY  
- Together as `-it`, they allow interactive sessions inside the container.

Once inside, explore:
```bash
ls
pwd
```

---

### Task 2: Check OS Version Inside the Container
```bash
cat /etc/os-release
```

---

### Task 3: Exit the Container
```bash
exit
```
(or press **Ctrl+D**)

---

### Task 4: Detached Mode Example
```bash
docker run -d ubuntu sleep 100
```
- Runs in background for 100 seconds.  

---

## ✅ Conclusion
You have learned how to:
- Run interactive containers with `-it`.  
- Explore the container environment.  
- Check OS version inside.  
- Exit and compare interactive vs detached modes.
