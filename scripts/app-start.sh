#!/bin/bash

sudo docker build . -t testservername:latest --file /home/ubuntu/Jerry/TestServer/Dockerfile
sudo docker run -d -p 3000:3000 testservername:latest