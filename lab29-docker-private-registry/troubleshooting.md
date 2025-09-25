# Troubleshooting – Lab 29

### Issue 1: `{"repositories":[]}`
- Cause: The image has only been tagged but not pushed.
- Fix: Run `docker push localhost:5000/myimage`.

### Issue 2: Port conflicts on 5000
- Cause: Another service is already using port 5000.
- Fix: Run registry on another port, e.g.:
  ```bash
  docker run -d -p 5001:5000 --name myregistry registry:2
  ```

### Issue 3: Curl not installed
- Fix: Install curl with:
  ```bash
  sudo apt-get update && sudo apt-get install -y curl
  ```

### Issue 4: Cannot connect to registry
- Ensure the container is running:
  ```bash
  docker ps
  ```

### Issue 5: Registry data lost after restart
- Cause: Ephemeral container without volume.
- Fix: Mount a volume for persistence:
  ```bash
  docker run -d -p 5000:5000 -v /opt/registry-data:/var/lib/registry --name myregistry registry:2
  ```
