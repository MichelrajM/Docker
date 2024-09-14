#!/bin/bash
#Author :Michelraj
#Date :14 sep 2024
#This Script is using by Docker installation and container run 
##############################################################
#update the packages list 
echo "update the packages"
sudo apt update

#install the docker 
echo"installing the docker"
sudo apt install docker.io -y

#check the docker version 
echo"list the docker version"
sudo docker --version

#pull the docker images
echo"pulling httpd images"
sudo docker pull httpd 

#show the docker images
echo"listing the docker images"
sudo docker images

#run the container 
echo"Running the httpd container"
sudo docker run -d --name maikeraj -p "8090:80" httpd

#wait for 2 minutes
echo "Container is running. Waiting for 2 minutes..."
sleep 120
#stop the conatiner 
echo "Stopping the container..."
sudo docker stop maikel
