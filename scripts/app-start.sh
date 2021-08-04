#!/bin/bash

sudo docker container stop $(sudo docker container list -q)
sudo docker rmi $(sudo docker images -q) --force

sudo docker build -t testservername:latest .
sudo docker run -d -p 3000:3000 testservername:latest