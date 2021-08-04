#!/bin/bash

sudo docker container stop $(sudo docker container list -q)
sudo docker rmi $(sudo docker images -q) --force