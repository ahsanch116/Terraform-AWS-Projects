#!/bin/bash

# 1. Update system
yum update -y

# 2. Install Docker (Standard syntax for Amazon Linux 2023)
yum install -y docker

# 3. Start Docker
systemctl start docker
systemctl enable docker

# 4. Add ec2-user to docker group
usermod -aG docker ec2-user

# 5. Run the Nginx test container (or your Django app)
docker run -d \
  --name web-test \
  --restart always \
  -p 80:80 \
  nginx