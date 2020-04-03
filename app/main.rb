# frozen_string_literal: true

require "sinatra"

get "/" do
  logger.info "We do have logging!"
  "hello world: #{settings.environment}"
end
