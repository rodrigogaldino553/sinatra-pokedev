# frozen_string_literal: true


require 'sinatra'
require 'json'

# development only
require 'sinatra/reloader' if development?


require './config/routes'

set :port, 4567 || ENV['PORT']

set :views, File.join(File.dirname(__FILE__), '/views')
# set :public_folder, File.join(File.dirname(__FILE__), '/public')



