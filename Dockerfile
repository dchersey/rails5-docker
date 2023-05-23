FROM node:18-alpine3.16 as node
FROM ruby:2.7-alpine3.15 

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

RUN apk update && apk add build-base linux-headers postgresql-dev git imagemagick ffmpeg file python2 

# Official way to install YARN
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories && \
apk add --no-cache yarn

# install rails
RUN mkdir -p /app
COPY Gemfile /app/
COPY Gemfile.lock /app/
COPY package.json /app/
COPY yarn.lock /app/
WORKDIR /app

ENV RAILS_ROOT /app

RUN gem install bundler
RUN bundle config set path 'vendor'
RUN bundle install --jobs 20 --retry 5 
RUN bundle package

RUN yarn install

