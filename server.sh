#!/bin/sh

# echo $1 #argument one
# echo $2 #argument two




echo "Startup ..."
echo "0.Exit"
echo "1.Start mongodb server"
echo "2.Stop mongodb server"
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


startMongodb(){
  echo "Starting mongodb container..."
  docker-compose up &
  echo "Done!"
}
stopMongodb(){ 
  echo "Stopping mongodb containers..." 
  docker-compose stop & 
  echo "Done!"
}

if [ $choice -eq 0 ];then
  echo "Exiting ...";
  exit
elif [ $choice -eq 1 ];then
  startMongodb
elif [ $choice -eq 2 ];then
  stopMongodb
else
  echo "Exiting ..."
fi


