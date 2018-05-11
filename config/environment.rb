# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'development'

$stdout.sync = true

require 'bundler/setup'
require 'dotenv'

Bundler.require :default
Bundler.require Sinatra::Base.environment

Dotenv.load

require_all 'config/initializers'

require_all 'app'
