# frozen_string_literal: true

require_relative 'spec_helper'

describe 'main application' do
  it 'shows the default index page' do
    get '/'
    expect(last_response).to be_ok
  end

  it 'should have more specs'
end
