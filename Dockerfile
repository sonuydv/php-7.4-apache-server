FROM php:7.2.34-apache


# Installs and enable mysql client

RUN docker-php-ext-install mysqli pdo_mysql 
RUN apt-get update && apt-get upgrade -y

#Install and enable zip in php
RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-install zip

#install and enable gd in php
run apt-get install -y sendmail libpng-dev
run docker-php-ext-install gd

#Install and enable intl php extension
RUN apt-get install -y libicu-dev
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl



# Uncomment if you requrie apache rewrite mod.
RUN a2enmod rewrite

#Uncomment if you require headers mod.
RUN a2enmod headers


#Install and bind composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer


RUN apt-get install -y software-properties-common

# RUN apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
# RUN apt-get update
# RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y git
# RUN apt-get install -y ghostscript

RUN apt-get clean

