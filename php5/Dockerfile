FROM alpine:3.8
LABEL repository.hub="sevkin/php5" \
      repository.url="https://github.com/sevkin/dockerfiles" \
      maintainer="Vsevolod Balashov <vsevolod@balashov.name>"
RUN apk add --update tini \
    php5-apcu \
    php5-curl \
    php5-fpm \
    php5-gd \
    php5-json \
    php5-mcrypt \
    php5-mysqli \
    php5-xsl \
    && rm -rf /var/cache/apk/* \
    && ln -sf /dev/stderr /var/log/php-fpm.log
ENTRYPOINT ["tini", "--"]
CMD ["php-fpm5", "-F"]