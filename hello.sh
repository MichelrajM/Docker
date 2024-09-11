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

# Write the content to index.html file
echo "$html_content" > index.html

# Print the message that the file was created successfully
echo "The file index.html was created successfully."

# Print the present working directory
echo "The current working directory is:"
pwd

# Show the Docker images
docker images

# Run a Docker container
docker run -d --name myapp-- -p "8800:80" -v "$(pwd):/usr/local/apache2/htdocs" httpd

# Print the message that the container is running successfully
echo "The container is running successfully:"

# Show the running Docker containers
docker ps

