# Set the base image to Ubunt
FROM ubuntu:latest

# File Author / Maintainer
MAINTAINER nagesh

RUN apt-get update

# Download and Install Nginx
RUN apt-get install -y nginx

# Expose ports
EXPOSE 80

#Enable nginx service
ENTRYPOINT service nginx start && /bin/bash
