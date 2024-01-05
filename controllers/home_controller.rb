# frozen_string_literal: true


require './services/github_service'

class HomeController < Sinatra::Base
  get '/' do
    @data = {message: 'hello world'} 
    unless params[:q].nil?
      @data = GithubService.search_dev(params[:q])
    end
    
    erb :home
    # JSON.generate(data)
  end
end

