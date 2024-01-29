FROM nextcloud:latest

RUN apt update -y && apt upgrade -y

RUN apt install -y libbz2-dev && docker-php-ext-install bz2

RUN apt install ffmpeg -y

ADD config/opcache-recommended.ini /usr/local/etc/php/conf.d/opcache-recommended.ini