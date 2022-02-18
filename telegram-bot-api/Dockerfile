FROM alpine:3.15 AS builder
RUN apk update
RUN apk upgrade
RUN apk add --update alpine-sdk linux-headers git zlib-dev openssl-dev gperf cmake
RUN git clone --recursive https://github.com/tdlib/telegram-bot-api.git
RUN mkdir -p /telegram-bot-api/build
WORKDIR /telegram-bot-api/build
RUN cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local ..
RUN cmake --build . --target install

FROM alpine:3.15
LABEL repository.hub="sevkin/telegram-bot-api" \
    repository.url="https://github.com/sevkin/dockerfiles" \
    maintainer="Vsevolod Balashov <vsevolod@balashov.name>"
RUN apk update \
    && apk upgrade \
    && apk add --update tini zlib openssl libstdc++ \
    && rm -rf /var/cache/apk/*
COPY --from=builder /usr/local /usr/local
VOLUME ["/data"]
WORKDIR /data
EXPOSE 8081
# TODO expose stat port
ENTRYPOINT ["tini", "--"]
# TODO more args for cmd
CMD ["telegram-bot-api"]