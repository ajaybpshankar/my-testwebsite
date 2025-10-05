#!/bin/bash
set -e

# Define your Docker Hub repository and image tag
# If your image is public, you don’t need to log in.
IMAGE_REPO="bpajay/web"
IMAGE_TAG="latest"  # Adjust if you use a versioned tag

echo "Stopping and removing any existing container..."
docker stop web || true
docker rm web || true

echo "Pulling the latest image from Docker Hub..."
docker pull $IMAGE_REPO:$IMAGE_TAG

echo "Starting the new container..."
docker run -d --name web -p 80:80 $IMAGE_REPO:$IMAGE_TAG
