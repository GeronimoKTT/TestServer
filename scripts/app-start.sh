#!/bin/bash

sudo docker system prune --all --force
sudo docker build -t testservername:latest -f /home/ubuntu/Jerry/TestServer/Dockerfile .
sudo docker run -d -p 3000:3000 testservername:latest