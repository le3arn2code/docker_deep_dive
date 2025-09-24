# Lab 21 – Docker Container Lifecycle Hooks

## Objectives
- Understand and utilize Docker container lifecycle hooks effectively.
- Learn how to use ENTRYPOINT and CMD in a Dockerfile.
- Comprehend how ENTRYPOINT and CMD interact during container startup.
- Master the process of passing arguments to a container at runtime.

## Lab Tasks
### Task 1: Write a Dockerfile with ENTRYPOINT and CMD
```bash
mkdir docker-lifecycle-hooks
cd docker-lifecycle-hooks
touch Dockerfile
```
Dockerfile content:
```dockerfile
FROM alpine:latest
ENTRYPOINT ["echo"]
CMD ["Hello, world!"]
```

### Task 2: Build and Run Your Image
```bash
docker build -t my-echo-app .
docker run my-echo-app
```

### Task 3: Pass Arguments at Runtime
```bash
docker run my-echo-app "Docker is awesome!"
```

## Key Concepts
- **ENTRYPOINT**: Defines the executable run in the container.
- **CMD**: Provides default parameters to the ENTRYPOINT.

## Conclusion
You learned how ENTRYPOINT and CMD define startup behavior and how runtime arguments override CMD values.
