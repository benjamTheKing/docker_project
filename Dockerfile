FROM ubuntu:18.04
MAINTAINER benji
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git nginx
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
