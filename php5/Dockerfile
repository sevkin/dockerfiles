FROM alpine:3.8
LABEL repository.hub="sevkin/php5" \
      repository.url="https://github.com/sevkin/dockerfiles" \
      maintainer="Vsevolod Balashov <vsevolod@balashov.name>"
RUN apk add --update tini \
    # php5-apcu \
    php5-curl \
    php5-fpm \
    php5-gd \
    php5-iconv \
    php5-json \
    php5-mcrypt \
    php5-mysqli \
    php5-opcache \
    php5-xml \
    php5-xmlreader \
    php5-xsl \
    php5-zip \
    php5-ctype \
    && apk add --repository http://dl-cdn.alpinelinux.org/alpine/v3.10/community/ --allow-untrusted gnu-libiconv \
    && rm -rf /var/cache/apk/* \
    && ln -sf /dev/stderr /var/log/php-fpm.log
# https://github.com/nunomaduro/phpinsights/issues/43#issuecomment-498108857
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so
ENTRYPOINT ["tini", "--"]
CMD ["php-fpm5", "-F"]