FROM ruby:2.7-alpine3.15

RUN apk update && apk add build-base linux-headers postgresql-dev git imagemagick ffmpeg file python2 
RUN apk add --update nodejs-current npm
RUN apk upgrade 

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
# RUN bundle install --jobs 20 --retry 5 
# RUN bundle package

# RUN yarn install

