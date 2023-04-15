#version
docker version

#pull from docker hub
docker pull <image name>

#create a container from an image and run it (-d for detached mode)
docker run -it -d <image name>

#list running containers
docker ps

#list all containers
docker ps -a

#access the running container (/bin/bash or /bin/sh --one should work)
docker exec -it <container id> /bin/bash

#stop a container
docker stop <container id>

#kill the container by forcing it to stop
docker kill <container id>

#create a new image of an edited container
docker commit <container id> <new image name>

#login to dockerhub repository
docker login

#push the image to dockerhub
docker push <username/image name>

#list all images
docker images

#remove an image
docker rmi <image id>

#remove a container
docker rm <container id>

#buld an image from a specific Dockerfile
docker build -t <image name> .





