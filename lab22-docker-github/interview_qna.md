# Interview Q&A

## 1. What does this lab demonstrate?
It shows how to integrate GitHub with Docker to automate building and running containerized apps.

## 2. What application was used?
A simple Python Flask app serving "Hello, Docker!".

## 3. What Dockerfile base image was used?
`python:3.9-slim` from Docker Hub.

## 4. Why is EXPOSE used in Dockerfile?
It documents the port the app runs on (5000) for external access.

## 5. What automation tool was used?
GitHub Actions with a workflow (`docker-image.yml`).

## 6. What common Git error was faced?
`fatal: empty ident name`, fixed with global git config.

## 7. How were DockerHub secrets managed?
Added `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` as GitHub secrets.

## 8. How was the port conflict resolved?
By mapping container port 5000 to different host ports (e.g., 5001, 5002).

## 9. How was the image validated?
Pulled from Docker Hub and run locally with `docker run`.

## 10. What is the overall learning?
Understanding Docker-GitHub integration, handling errors, and using CI/CD pipelines for automated builds.
