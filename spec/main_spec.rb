# frozen_string_literal: true

require_relative "spec_helper"

describe "main application" do
  it "shows the default index page" do
    get "/"
    expect(last_response).to be_ok
    expect(last_response.content_type).to eq("text/html;charset=utf-8")
  end

  it "can also return JSON" do
    get "/json"
    expect(last_response).to be_ok
    expect(last_response.content_type).to eq("application/json")
    expect(last_response.body).to be_valid_json
  end

  it "should have more specs"
end
