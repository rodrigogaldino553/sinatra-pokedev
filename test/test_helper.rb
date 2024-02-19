# frozen_string_literal: true


ENV['RACK_ENV'] = 'test'
require_relative '../app'
require 'simplecov'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]
# SimpleCov.start 'rails' disable simplecov for now

class Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end
