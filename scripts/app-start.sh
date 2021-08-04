#!/bin/bash

sudo docker build -t testservername:latest .
sudo docker run -d -p 3000:3000 testservername:latest