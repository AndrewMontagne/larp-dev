FROM debian:stable-slim
RUN apt-get update
RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y curl wget git unzip nano)
RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y php)
RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y php-mbstring php-zip php-xml php-gd php-curl php-redis php-xdebug)
RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y apache2)
RUN (DEBIAN_FRONTEND=noninteractive apt-get install -y redis)
COPY ./bootstrap.sh /bootstrap.sh
ENTRYPOINT /bootstrap.sh

