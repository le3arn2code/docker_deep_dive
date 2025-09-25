# Lab 29 – Pushing Images to a Private Docker Registry

## Objectives
- Understand the steps to set up a private Docker registry.
- Learn how to tag Docker images.
- Push Docker images to the private registry.
- Retrieve Docker images from the private registry for use.

## Steps Performed
1. **Pulled the official registry image**  
   ```bash
   docker pull registry:2
   ```

2. **Ran the registry container locally**  
   ```bash
   docker run -d -p 5000:5000 --name myregistry registry:2
   ```

3. **Checked existing images**  
   ```bash
   docker images
   ```

4. **Pulled the Alpine image**  
   ```bash
   docker pull alpine:latest
   ```

5. **Tagged Alpine for local registry**  
   ```bash
   docker tag alpine:latest localhost:5000/myimage
   ```

6. **Pushed the tagged image into the local registry**  
   ```bash
   docker push localhost:5000/myimage
   ```

7. **Verified the image in the registry catalog**  
   ```bash
   curl -X GET http://localhost:5000/v2/_catalog
   ```
   Output:
   ```json
   {"repositories":["myimage"]}
   ```

## Conclusion
We successfully set up a private Docker registry, tagged an image, pushed it, and confirmed it via the registry API.  
This demonstrates how private registries can be used to host images locally or in enterprise environments.
