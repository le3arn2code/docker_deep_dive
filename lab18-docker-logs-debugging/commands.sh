#!/bin/bash
# Lab 18: Docker Logs & Debugging Commands

# Task 1: Run container in the background
docker pull nginx:latest
docker run -d --name my_nginx nginx:latest

# Task 2: View container logs
docker logs my_nginx
docker logs -f my_nginx

# Task 3: Troubleshooting
docker exec -it my_nginx /bin/bash
docker top my_nginx
# Inside container (if procps installed):
# ps aux
# Inspect environment variables
docker exec -it my_nginx env
