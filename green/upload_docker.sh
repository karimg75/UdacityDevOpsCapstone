#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=karimg75/testgreenimage

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username karimg75
docker tag testgreenimage karimg75/testgreenimage
# Step 3:
# Push image to a docker repository
docker push karimg75/testgreenimage
