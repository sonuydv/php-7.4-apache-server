# php-7.4-apache-server
docker compose : php-7.4-apache-server with mysql 


##Description
1.this repo should only be used for testing purposes to mongodb with mongo-express web client


##Mongo db data will be stored in the parent directory named data
if not exits create one by following steps
Assume that you are in root repo directory
$ mkdir ../data

##Installation
after cloning the reposition
###Manual installation : -
1.Create a data folder in root directory for mysql db if already otherwise new mysql folder will be created.
2.Create a log folder for logs in root directory.
3.run the following command 
 $ docker-compose docker-compose.yml
###Automatic installation : -
run install.sh script avaiable in root of source folder

after installation you can use server script avaiable in root of source folder



##Configuration
###Vertual hosts 
You can check inside etc folder avaiable in root of source folder for virtual hosts related configuration

##Changes 

