# Interview Q&A – Lab 8: Image Layers & Caching

**Q1. What are image layers in Docker?**  
Each instruction in a Dockerfile creates a new read-only layer.

**Q2. Why does Docker use caching?**  
To speed up builds by reusing unchanged layers.

**Q3. How does command order affect caching?**  
Earlier changes invalidate all following layers.

**Q4. Which instructions usually break cache most often?**  
`COPY . .` since it brings in frequently changing code.

**Q5. What’s the benefit of copying package.json before code?**  
Dependencies get cached unless package.json changes.

**Q6. How do you force rebuild ignoring cache?**  
`docker build --no-cache -t <image> .`

**Q7. How to check image layers?**  
Run `docker history <image>`.

**Q8. What’s a best practice for efficient Docker builds?**  
Order instructions: install dependencies before copying app code.

**Q9. What’s a multi-stage build?**  
A method to reduce final image size by discarding build-time layers.

**Q10. Why did we include dummy package.json in this lab?**  
So Dockerfile builds successfully without needing a real Node.js app.
