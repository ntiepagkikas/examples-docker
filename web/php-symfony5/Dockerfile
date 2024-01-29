FROM fedora:39

RUN dnf update -y && dnf upgrade -y

RUN dnf install -y git composer php-ctype php-iconv php-pcre php-session php-simplexml php-pdo php-mysqli php-opcache

RUN curl -sS https://get.symfony.com/cli/installer | bash

RUN chmod +x /root/.symfony5/bin/symfony

RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

RUN mkdir /app
WORKDIR /app

COPY ./src /app

EXPOSE 8000

CMD ["symfony", "serve"]
