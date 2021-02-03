FROM ruby:2.7.2-alpine3.13

# RUN apk update -qq && apt-get install -y build-essential libpq-dev
RUN apk update && apk add build-base linux-headers nodejs-current postgresql-dev git imagemagick file python2

# Official way to install YARN
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories && \
apk add --no-cache yarn

# install rails
RUN mkdir -p /app
COPY Gemfile /app/
WORKDIR /app

ENV RAILS_ROOT /app

RUN gem install bundler
RUN bundle config set with 'development test'
RUN bundle config set path 'vendor'
RUN bundle install --jobs 20 --retry 5 
RUN bundle package


