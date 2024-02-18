# frozen_string_literal: true


require './app/controllers/home_controller'

use HomeController


get '/health' do
  status 200
end
