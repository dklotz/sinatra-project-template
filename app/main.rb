# frozen_string_literal: true

require "sinatra"
require 'sinatra/json'
require 'sinatra/reloader' if development?

get "/" do
  logger.info "We do have logging!"
  erb :index
end

get "/json" do
  response = {
    answer: 42,
    interrocitor: "installed",
    transmogrified: true,
  }
  json response
end
