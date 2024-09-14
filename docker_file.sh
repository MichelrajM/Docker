#!/bin/bash
#Author :Michelraj
#Date :14 sep 2024
#This Script is using by Docker installation and container run 
##############################################################
#update the packages list 
echo "update the packages
sudo apt update

#install the docker 
echo"installing the docker"
sudo apt install docker.io -y

#check the docker version 
echo"list the docker version"
docker --version

#pull the docker images
echo"pulling httpd images"
docker pull httpd 

#show the docker images
echo"listing the docker images"
docker images

#run the container 
echo"Running the httpd container"
docker run -d --name maikel -p "8080:8080" httpd

#wait for 2 minutes
echo "Container is running. Waiting for 2 minutes..."
sleep 2
