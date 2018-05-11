# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require_relative '../config/environment'
require 'rack/test'
require 'rspec'

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.include RSpecMixin
end
