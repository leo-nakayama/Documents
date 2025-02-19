#!/usr/bin/bash

set -x

echo "starting to push flask-app/commit-service to ECR"


aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 390844761130.dkr.ecr.ap-northeast-1.amazonaws.com

docker build -t flask-app/commit-service .

docker tag flask-app/commit-service:latest 390844761130.dkr.ecr.ap-northeast-1.amazonaws.com/flask-app/commit-service:latest

docker push 390844761130.dkr.ecr.ap-northeast-1.amazonaws.com/flask-app/commit-service:latest

echo "done."
