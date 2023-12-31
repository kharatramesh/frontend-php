FROM ubuntu
MAINTAINER "chetan@gmail.com"
LABEL "app"="php application"
RUN apt update -y
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt install apache2 -y
RUN apt install sudo php php-mysql libapache2-mod-php -y
COPY index.php /var/www/html
CMD ["apache2ctl","-D","FOREGROUND"]
