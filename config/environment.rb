# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'development'

$stdout.sync = true

require 'bundler/setup'
require 'dotenv'

Bundler.require :default
Bundler.require Sinatra::Base.environment

root_path = File.expand_path(File.join(File.dirname(__FILE__), '../app'))
set :root, root_path
set :app_file, "#{root_path}/main.rb"

Dotenv.load

require_all 'config/initializers'

require_all 'app'
