#!/bin/sh


#Create data folder if not exist for storing mysql data
mkdir data

#Create log folder if not exist for log file
mkdir log

echo "Building server containers ..."
docker-compose build

echo "Installation complete"
echo "---"
echo "---"
echo "---"
echo "---"

echo "You can use <server> inside utility to start stop container server"

