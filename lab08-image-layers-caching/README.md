# Lab 8 – Understanding Image Layers & Caching

## 🎯 Objectives
- Understand Docker image layers and caching.
- Learn to optimize Docker builds by ordering instructions.
- Observe caching effects when rebuilding images.
- Analyze how unchanged layers improve build performance.

## 📋 Prerequisites
- Basic Docker knowledge.
- Docker installed (`docker --version` to verify).
- Familiarity with the CLI.

---

## 📝 Lab Tasks

### Task 1: Verify Docker Installation
```bash
docker --version
```

### Task 2: Create a Basic Dockerfile
```dockerfile
FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]
```

### Task 3: Build the Image
```bash
docker build -t my_node_app .
```

### Task 4: Modify Command Order (Dockerfile.v2)
```dockerfile
FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]
```
Rebuild with:
```bash
docker build -f Dockerfile.v2 -t my_node_app_v2 .
```

### Task 5: Analyze Caching
- Note which steps reused cache.
- Reflect on why reordering Dockerfile commands improves efficiency.

---

## ✅ Conclusion
You learned:
- How Docker uses layers and cache.  
- How command order affects build performance.  
- Why caching makes frequent rebuilds faster.  

Next: explore **multi-stage builds** for smaller, faster images.
