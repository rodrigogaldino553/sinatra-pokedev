# frozen_string_literal: true


class HomeController < Sinatra::Base
  get '/' do
    content_type :json
    
    data = {name: 'John', surname: 'Kidies', message: 'Hello world', group: 'rhcp'}
    JSON.generate(data)
  end
end

