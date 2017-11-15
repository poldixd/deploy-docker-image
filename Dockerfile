# https://hub.docker.com/_/alpine/
FROM alpine:3.6

MAINTAINER Nils Poltmann <dev@nils.li>

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client \
            zip \
            unzip \
 && rm -rf /var/cache/apk/*
