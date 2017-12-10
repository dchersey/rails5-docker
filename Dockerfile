FROM ruby:2.4-alpine

# RUN apk update -qq && apt-get install -y build-essential libpq-dev
RUN apk update && apk add build-base nodejs postgresql-dev

# Official way to install YARN
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories && \
apk add --no-cache yarn

# install rails
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler && bundle install --jobs 20 --retry 5 --without development test

ENV RAILS_ROOT /app
