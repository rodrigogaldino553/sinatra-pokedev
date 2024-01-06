# frozen_string_literal: true


require './app/services/github_service'

class HomeController < Sinatra::Base
  get '/' do
    @data = {message: 'hello world'} 
    unless params[:q].nil?
      @data = GithubService.search_dev(params[:q])
    end
  
    erb :home
  end
end

