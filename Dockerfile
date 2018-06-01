FROM devsu/apache2-http2

RUN apt-get update
RUN apt-get install -y net-tools
#RUN docker-php-ext-install sockets

RUN a2enmod rewrite
RUN a2enmod ssl

RUN a2enmod headers

RUN mkdir -p /etc/apache2/sites-enabled/

#ADD config/000-default.conf /etc/apache2/sites-enabled/
#ADD config/default-ssl.conf /etc/apache2/sites-enabled/
#ADD config/apache2.conf /etc/apache2/

EXPOSE 443
EXPOSE 80
