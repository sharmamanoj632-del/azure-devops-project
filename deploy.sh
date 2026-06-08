#!/bin/bash
cd ~/myapp
git pull origin main
docker build -t manoj-app .
docker stop $(docker ps -q) || true
docker run -d -p 80:80 manoj-app
