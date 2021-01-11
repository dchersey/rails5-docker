source 'https://rubygems.org'

ruby "2.4.5"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2'
# Use Puma as the app server
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use Rack Timeout. Read more: https://github.com/heroku/rack-timeout
gem 'rack-timeout'
# react
gem 'react-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'redis', '~>3.2'
gem 'redis-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'

# Data
gem 'ancestry'
gem 'aws-sdk', '< 3.0'
gem 'baby_squeel'
gem 'climate_control'
gem 'dalli'                     # memcached
gem 'firebase'
gem 'jwt'
gem 'paperclip'
gem 'paranoia', '~> 2.2'
gem 'pg'

gem 'seedbank'

# Web
gem 'bootstrap-sass'
gem 'foundation-rails'
gem 'haml-rails'
gem 'simple_form'

# REST
gem 'active_model_serializers'

gem 'json'

# Authentication
gem 'cancancan'
gem 'devise'
gem 'devise_token_auth'

# Workers
gem 'sidekiq'
gem 'sidekiq-history'
gem 'sidekiq-scheduler'
gem 'sidekiq_mailer'

gem 'activeadmin'

gem 'fast_jsonapi'


group :development, :staging do
  gem 'better_errors'#, github: 'creditkudos/better_errors', branch: 'quieter_output'
  gem 'binding_of_caller'
end

group :development do
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-migrate'
  gem 'guard-rspec'
  gem 'rack-livereload'
  gem 'rb-fsevent'
  gem 'spring'                  # keep application running in the background
  gem 'spring-commands-rspec'
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
end

gem 'factory_bot_rails'

group :development, :test, :staging do
  gem 'rails-controller-testing'
  # gem 'pry'                   # better than irb
  gem 'byebug', '~> 10.0.0'               # ruby 2.0 debugger with built-in pry
  # gem 'pry-rails'               # adds rails specific commands to pry
  # gem 'pry-byebug'              # add debugging commands to pry
end
gem 'ffaker'

group :staging, :production do
  gem 'instrumental_agent'
end

group :test do
  gem 'fuubar'
  gem 'its'
  gem 'minitest', '~> 5.11.1'                # include minitest to prevent require 'minitest/autorun' warnings
  # gem 'capybara-webkit'
  gem 'json_spec'
  gem 'rspec-collection_matchers'
  gem 'rspec-instafail'
  gem 'rspec-mocks'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  # Helpers
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'timecop'               # Mock Time

  # Coverage
  gem 'simplecov', require: false
  gem 'simplecov-cobertura'

  # gem 'rspec-sidekiq'
  gem 'rspec-activemodel-mocks'
end

gem 'airbrake'
gem 'airbrake-ruby'
gem 'dotenv'
gem 'dotenv-rails'

gem 'awesome_print'           # pretty pring debugging output
