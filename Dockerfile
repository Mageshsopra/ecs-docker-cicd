FROM ubuntu:20.04
MAINTAINER Magesh
RUN apt-get -y update && apt-get -y install nginx
COPY nginx.conf /etc/nginx/conf
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
