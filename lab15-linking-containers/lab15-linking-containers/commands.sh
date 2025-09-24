#!/bin/bash
# Lab 15: Linking Containers

# Pull images
docker pull httpd
docker pull mysql

# Run MySQL container
docker run --name mydb -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql

# Run Apache container linked to MySQL
docker run --name myweb --link mydb:mysql -d httpd

# Create a user-defined network
docker network create mynetwork

# Run MySQL and Apache containers on user-defined network
docker run --name mydb --network mynetwork -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql
docker run --name myweb --network mynetwork -d httpd
