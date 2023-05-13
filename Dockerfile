FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install nginx vim -y

RUN rm /var/www/html/*

RUN echo "My new website with Dockerfile" > /var/www/html/index.html

CMD /usr/sbin/nginx -g "daemon off;"

EXPOSE 80
