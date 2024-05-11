#!/bin/bash

# Set your Docker Hub username
DOCKER_HUB_USERNAME="musfiqdehan"

# Build images
docker-compose build

# Tag the backend image
docker tag notewise-backend:latest $DOCKER_HUB_USERNAME/notewise-backend:latest
docker tag notewise-frontend:latest $DOCKER_HUB_USERNAME/notewise-frontend:latest

# Push the images to Docker Hub
docker push $DOCKER_HUB_USERNAME/notewise-backend:latest
docker push $DOCKER_HUB_USERNAME/notewise-frontend:latest
