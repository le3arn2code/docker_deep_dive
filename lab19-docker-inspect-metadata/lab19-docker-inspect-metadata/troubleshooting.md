# Troubleshooting - Lab 19 Docker Inspect & Metadata

1. **Error: `jq: command not found`**
   - Fix: Install jq: `sudo apt-get install -y jq`

2. **No containers to inspect**
   - Run a container first:
     ```bash
     docker run -d --name my_nginx nginx:latest
     ```

3. **Long JSON output**
   - Use jq to filter relevant sections, e.g.:
     ```bash
     docker inspect my_nginx | jq '.[0].Config.Env'
     ```

4. **Permission denied**
   - Use `sudo` before Docker commands if your user isn’t in the docker group.

