# frozen_string_literal: true


require 'sinatra'
require 'json'

# development only
if development?
  require 'sinatra/reloader'
  require 'pry-byebug'
elsif test?
  require 'minitest/autorun'
  require 'minitest/spec'
  require 'minitest/reporters'
  require 'rack/test'
  require 'pry-byebug'
end


require './config/routes'

set :port, 4567 || ENV['PORT']

set :views, File.join(File.dirname(__FILE__), '/views')
# set :public_folder, File.join(File.dirname(__FILE__), '/public')



