# frozen_string_literal: true


require 'sinatra'
require 'sinatra/reloader' if development?
require 'json'

require './routes'

set :port, 4567 || ENV['PORT']


