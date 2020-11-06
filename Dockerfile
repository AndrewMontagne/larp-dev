FROM andrewmontagne/larp-stack:php8
RUN apt-get update
RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y php-xdebug)
COPY xdebug.ini /etc/php/8.0/mods-available/xdebug.ini
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
ENTRYPOINT /bootstrap.sh

