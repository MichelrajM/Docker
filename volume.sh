
#!/bin/bash
# Author: Michelraj
# Date: 10 Sep 2024
# This script is used for creating a directory and an index.html file

###############################################

# Create the directory
mkdir myapp

# Change to the newly created directory
cd myapp || { echo "Failed to enter directory"; exit 1; }

# Create the index.html file with some default content
html_content='<!DOCTYPE html>
<html>
<head>
    <title>My Web Page</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <p>This is a simple HTML file created using a shell script.</p>
</body>
</html>'

#write the content index.html file 
echo "html_content" >index.html

#ptint the message file created sucessfully
echo "the file is created is sucessfully"

# Print the present working directory
echo "The current working directory is:"
pwd

#show the docker images
docker images

#docker container run 
docker run -d --name myapps -p "8000:80" -v "/root/myapp:/ /usr/local/apache2/htdocs" httpd

#print the the container is run sucessfully
echo "the container is run sucessfully:"
docker ps

 
