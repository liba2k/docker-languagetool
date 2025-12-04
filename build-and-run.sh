#!/bin/bash
set -e

# Script to build and run the LanguageTool Docker container

IMAGE_NAME="erikvl87/languagetool"
CONTAINER_NAME="languagetool"

echo "Building Docker image..."
docker build -t "$IMAGE_NAME" .

echo "Starting container with docker compose..."
docker compose up -d

echo "Done! LanguageTool is running at http://localhost:8010"
echo "Use 'docker compose logs -f' to view logs"
echo "Use 'docker compose down' to stop the container"
