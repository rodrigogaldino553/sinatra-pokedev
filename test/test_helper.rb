# frozen_string_literal: true


ENV['RACK_ENV'] = 'test'
require_relative '../app'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

class Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end
