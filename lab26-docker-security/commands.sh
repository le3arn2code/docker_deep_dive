#!/bin/bash
# Lab 26 – Docker Security Basics Commands

# Step 1: Setup project
mkdir docker-security-basics && cd docker-security-basics

# Step 2: Create Dockerfile
cat > Dockerfile <<'EOF'
FROM ubuntu:latest
RUN useradd -m appuser
USER appuser
COPY example-script.sh /home/appuser/example-script.sh
CMD ["bash", "/home/appuser/example-script.sh"]
EOF

# Step 3: Create script
cat > example-script.sh <<'EOF'
#!/bin/bash
echo "Running as user: $(whoami)"
EOF
chmod +x example-script.sh

# Step 4: Build image
docker build -t non-root-user-example .

# Step 5: Run container
docker run --rm non-root-user-example

# Step 6: Drop capability
docker run --rm --cap-drop=NET_ADMIN alpine:latest ip link add dummy0 type dummy

# Step 7: Add capability
docker run --rm --cap-add=NET_ADMIN alpine:latest ip link add dummy0 type dummy

# Step 8: Resource limits
docker run --rm --memory="256m" --cpus="1" non-root-user-example
