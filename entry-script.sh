#!/bin/bash
apt-get update && apt-get install -y docker-ce
systemctl start docker
usermod -aG docker ec2-user
docker run -p 8080:8080 nginx