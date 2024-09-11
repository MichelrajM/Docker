#!/bin/bash
#Author:Michelraj
#Date:11/09/2024
#This script is using to Docker installation

#update the ubuntu packages,new installation 
sudo apt update
#install the Docker
sudo apt install docker.io -y
#check the docker version
sudo docker --version
#pull the new images 
sudo pull httpd #I am pull the apache2 images
#show the images
sudo docker images
#Run the docker container 
sudo docker run -d --name app -p "8080:80" httpd 
#show the container 
sudo docker ps 
