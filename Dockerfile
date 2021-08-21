FROM ubuntu:latest
MAINTAINER ybmsr <ybmadhu404@gmail.com>
#WORKDIR /usr/apps/hello-docker/
RUN apt-get -y update
RUN apt-get install -y nodejs
RUN apt-get install apache2 -y
WORKDIR /var/www/html
COPY index.html .
CMD ["apachectl", "-D", "FOREGROUND"]
