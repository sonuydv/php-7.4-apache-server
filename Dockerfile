FROM php:7.4.33-apache-bullseye


# Installs and enable mysql client

RUN docker-php-ext-install mysqli pdo_mysql
RUN apt-get update && apt-get upgrade -y

#Install and enable zip in php
RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-install zip

#Install and enable gd in php
RUN apt-get install -y sendmail libpng-dev
RUN docker-php-ext-install gd

# Uncomment if you requrie apache rewrite mod.
RUN a2enmod rewrite

#Uncomment if you require headers mod.
RUN a2enmod headers


#Install and bind composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer


RUN apt-get install -y software-properties-common

RUN apt-add-repository 'deb http://archive.debian.org/debian stretch main contrib non-free'
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y git
RUN apt-get install -y ghostscript

RUN apt-get clean

