FROM ruby:2.4-alpine

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn

RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler && bundle install --jobs 20 --retry 5 --without development test

ENV RAILS_ROOT /app
