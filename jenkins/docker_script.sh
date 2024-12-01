#!/bin/bash

# Docker Hub credentials
DOCKER_USERNAME=$1
DOCKER_PASSWORD=$2

# Login to Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Build Docker images
docker build -t engineer02/backend ./server
docker build -t engineer02/frontend ./client

# Push Docker images to Docker Hub
docker push engineer02/backend
docker push engineer02/frontend
