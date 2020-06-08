FROM alpine:3.12.0

MAINTAINER Thomas Strohmeier

ENV MULTICHAIN_VERSION 2.0.7

RUN apk add bash \
    && cd /tmp \
    && wget https://www.multichain.com/download/multichain-$MULTICHAIN_VERSION.tar.gz \
    && tar -xvzf multichain-$MULTICHAIN_VERSION.tar.gz \
    && cd multichain-$MULTICHAIN_VERSION \
    && mv multichaind multichain-cli multichain-util /usr/local/bin \
    && rm -Rf /tmp/multichain*
