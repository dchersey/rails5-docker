source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.1'
# Use postgres as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Add support for SQL view migrations in ActiveRecord
gem 'scenic'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# For namespacing data that goes into Redis. Sidekiq uses this
gem 'redis-namespace'

# CSS emails
gem 'roadie-rails', '~> 2.2'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Data
gem 'ancestry'
gem 'aws-sdk-s3', require: false
gem 'climate_control'
gem 'dalli'                     # memcached
gem 'jwt'
gem 'paranoia', '~> 2.2'
gem 'seedbank'

# handle attachmemnts
gem 'mini_magick'
gem 'mimemagic'
gem "image_processing"
gem 'file_validators'

# Web
gem 'bootstrap-sass'
gem 'foundation-rails'
gem 'haml-rails'
gem 'simple_form'


gem 'oj'
gem 'multi_json'

# REST
gem 'json'
gem 'jsonapi-serializer'

# Authentication
gem 'cancancan'
gem 'devise'
gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth'

# Workers
gem 'sidekiq'
gem 'sidekiq-history'
gem 'sidekiq-scheduler'
gem 'sidekiq_mailer'

gem 'activeadmin'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

gem 'react-rails'
# concise logging
gem 'lograge'

# Integration with Atlassian Jira
gem 'jira-ruby'

# gem 'airbrake'
# gem 'airbrake-ruby'
# Windows/Alpine do not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'
gem 'dotenv'
gem 'dotenv-rails'

gem 'awesome_print'

group :development do
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-migrate'
  gem 'guard-rspec'
  gem 'rack-livereload'
  gem 'rb-fsevent'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'
end

group :test do
  gem 'fuubar'
  gem 'its'
  # gem 'minitest', '~> 5.11.1'                # include minitest to prevent require 'minitest/autorun' warnings
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

  # Coverage
  gem 'simplecov', require: false
  gem 'simplecov-cobertura'

  gem 'rspec-sidekiq'
  gem 'rspec-activemodel-mocks'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :development, :staging do
  gem 'better_errors'#, github: 'creditkudos/better_errors', branch: 'quieter_output'
  gem 'binding_of_caller'
    # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
end

group :development, :test, :staging do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rails-controller-testing'
end

group :development, :test, :staging, :demo do
  gem 'timecop'               # Mock Time
  gem 'factory_bot_rails'
  gem 'ffaker'
end

group :staging, :production, :demo do
  gem 'instrumental_agent'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
end

