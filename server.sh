#!/bin/sh

# echo $1 #argument one
# echo $2 #argument two




echo "Startup ..."
echo "0.Exit"
echo "1.Web server start"
echo "2.Web server stop"
echo -n "Selection : "
read choice

#check if input is valid integer
if [[ $choice =~ ^[+-]?[0-9]+$ ]]; then
  echo "Please wait ..."
else
  echo "Please provide a valid input!";
  echo "Exiting ..";
  exit
fi


startWebServer(){
  echo "Starting container web server ..."
  # cd ~/workspace/web/server
  docker-compose up &
  echo "Done!"
}
stopWebServer(){ 
  echo "Stopping apache container ..." 
  docker container stop php-apache-7.4.33
  echo "Stopping mysql container ..."
  docker container stop mysql-8.0.31
  echo "Done!"
}

if [ $choice -eq 0 ];then
  echo "Exiting ...";
  exit
elif [ $choice -eq 1 ];then
  startWebServer
elif [ $choice -eq 2 ];then
  stopWebServer
else
  echo "Exiting ..."
fi


