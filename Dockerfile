FROM ruby:2.7.1-alpine3.11

RUN bundle config --global frozen 1
RUN apk add git ruby-dev curl
RUN apk add --no-cache build-base

WORKDIR /usr/src/app

COPY ./src .