#!/bin/bash

# Reverse order for processing, list of directories
for dir in "38-Dashboard" "37-Hack_Misconfigured_Cluster" "36-Security-Context" \
           "35-Service-Account" "34-Blue-Green-Deploy-Svc-Play" "33-Blue-Green" \
           "32-Ingress-Canary" "31-Ingress-Path-Based-Routing" \
           "30-Ingress-App-Deployment" "29-Ingress-Cantroller" "28-AutoScaling" \
           "27-Metric-Server" "26-DaemonSet" "24-StatefulSet" "23-Service-Discovery" \
           "22-DNS-Extra" "21-DNS"
do
  # Extract the current number from the directory name (up to the first dash)
  current_num=$(echo "$dir" | cut -d'-' -f1)

  # Calculate the next number
  next_num=$((current_num + 1))

  # Destination directory (replace the current number with the next one)
  dest_dir=$(echo "$dir" | sed "s/^$current_num-/$next_num-/")

  # Check if the source directory exists
  if [ -d "$dir" ]; then
    echo "Moving $dir to $dest_dir"
    
    # Move the directory
    mv "$dir" "$dest_dir"
  else
    echo "$dir does not exist."
  fi
done

