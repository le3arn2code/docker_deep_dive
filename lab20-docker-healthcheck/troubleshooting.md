# Troubleshooting Lab 20

1. **Port Permission Error (EACCES on port 80):**
   - Solution: Change the server to listen on port 3000 in `server.js` and map it to host port 80 using `-p 80:3000`.

2. **Healthcheck Failing:**
   - Ensure that the health check URL matches the server port (use `curl http://localhost:3000/` inside container).

3. **Container stuck in `(health: starting)`:**
   - Run `docker logs <container>` to see if the app started correctly.
   - Confirm that `server.js` starts without crashing.

4. **`curl` not available inside container:**
   - Install curl in the Dockerfile with:
     ```dockerfile
     RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
     ```
