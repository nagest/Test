# Set the base image to Ubuntu
FROM ubuntu:latest

# File Author / Maintainer
MAINTAINER nagesh

RUN apt-get update

# Download and Install Nginx
RUN apt-get install -y nginx

# Expose ports
EXPOSE 80

ENTRYPOINT service nginx start && /bin/bash
