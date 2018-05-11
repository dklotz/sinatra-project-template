# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'development'

$stdout.sync = true

require 'bundler/setup'

Bundler.require :default
Bundler.require Sinatra::Base.environment

require_all 'config/initializers'

require './main' # TODO: or use sth like require_all 'app'?
