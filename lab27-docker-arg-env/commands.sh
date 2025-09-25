# Commands used in Lab 27 – ARG vs. ENV

# Step 1: Create project directory
mkdir docker-arg-env-demo && cd docker-arg-env-demo

# Step 2: Create Dockerfile
nano Dockerfile

# Step 3: Create Python app
nano app.py

# Step 4: Build Docker image with ARG
docker build --build-arg APP_VERSION=2.0.0 -t arg-env-demo .

# Step 5: Run container to check ENV
docker run --rm arg-env-demo
