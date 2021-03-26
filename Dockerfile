FROM ubuntu:14.04
LABEL "purpose"="webserver practice"
RUN apt-get update && apt-get install apache2 -y
ADD index.html /var/www/html
WORKDIR /vat/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
