#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull abhishekf5/simple-python-flask-app

docker stop nginx ; docker rm nginx

# Run the Docker image as a container
#docker run -d -p 5000:5000 abhishekf5/simple-python-flask-app
docker run -it -d -p 80:80 --name nginx nginx 
