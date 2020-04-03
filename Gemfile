# frozen_string_literal: true

source 'https://rubygems.org'

gem 'dotenv'
gem 'puma'
gem 'rake'
gem 'require_all'
gem 'sinatra'

# Testing
group :test do
  gem 'rack-test'
  gem 'rspec'
end

# Debugging
group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem "rubocop"
  gem "rubocop-performance"
end

group :development do
  gem 'awesome_print'
  gem 'foreman'
  gem 'pre-commit', require: false
end
