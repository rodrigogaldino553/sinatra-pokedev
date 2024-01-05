# frozen_string_literal: true


require './services/github_service'

class HomeController < Sinatra::Base
  get '/' do
    content_type :json
   
    data = {message: 'hello world'} 
    unless params[:q].nil?
      data = GithubService.search_dev(params[:q])
    end

    JSON.generate(data)
  end
end

