#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ozayr0116/house_price_predictor
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment house-predictor --image=ozayr0116/house_price_predictor
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/house-predictor 8000:80