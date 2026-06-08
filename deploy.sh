#!/bin/bash
cd ~/myapp
git pull origin main
docker build -t manoj-app .

docker stop manoj-container || true
docker rm manoj-container || true

docker run -d -p 80:80 --name manoj-container manoj-app
