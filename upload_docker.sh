#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
export $dockerpath=namitdoshi/prediction:v1

# Step 2:  
# Authenticate & tag
docker tag apiv1:latest $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath

#sudo docker tag apiv1:latest namitdoshi/prediction:v1


