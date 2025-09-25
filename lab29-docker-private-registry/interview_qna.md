# Interview Q&A – Lab 29: Docker Private Registry

**Q1. What is a Docker private registry?**  
A private registry is a self-hosted or controlled registry where organizations store Docker images instead of using Docker Hub.

**Q2. Why would you use a private registry?**  
To maintain control over images, improve security, and reduce dependency on public registries.

**Q3. What is the difference between a local registry and Docker Hub?**  
- Local registry: runs on your machine, accessible only within your environment.  
- Docker Hub: cloud-based, public by default unless configured private.

**Q4. What command runs a private registry locally?**  
```bash
docker run -d -p 5000:5000 --name myregistry registry:2
```

**Q5. How do you tag an image for a private registry?**  
```bash
docker tag alpine:latest localhost:5000/myimage
```

**Q6. What does `curl -X GET http://localhost:5000/v2/_catalog` do?**  
It queries the registry API to list repositories (images) stored in the registry.

**Q7. How can you persist registry data?**  
By mounting a host directory:
```bash
docker run -d -p 5000:5000 -v /opt/registry-data:/var/lib/registry registry:2
```

**Q8. What security considerations apply to private registries?**  
- Use TLS/SSL for encryption.  
- Require authentication.  
- Regularly scan images for vulnerabilities.

**Q9. Can you push to a private registry on another host?**  
Yes, replace `localhost` with the host’s IP/hostname, e.g.:
```bash
docker push 192.168.1.10:5000/myimage
```

**Q10. What happens if you don’t push after tagging?**  
The image remains only local. The registry catalog will not list it.
