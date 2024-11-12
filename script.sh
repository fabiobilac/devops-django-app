#!/bin/bash

sudo apt-get update
sudo apt-get install python3 git docker.io -y
sudo systemctl enable --now docker
sudo systemctl start docker

sleep 20s

sudo docker pull projects171/devops-django-app

sleep 30s

sudo docker run --name api_demoday -d -p 8000:8000 projects171/devops-django-app
