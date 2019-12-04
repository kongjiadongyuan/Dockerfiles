# PYTORCH DOCKER

## Build
docker build -t pytorch-kjdy -f Dockerfile .

## Run
docker run -d --name pytorch-run-kjdy -p 8080:8080 -p 8022:22 --gpus all pytorch-kjdy

## ssh key
add public key to authorized\_keys
