# frozen_string_literal: true


require './app/services/github_service'

class HomeController < Sinatra::Base
  get '/' do
    unless params[:q].nil?
      @data = GithubService.search_dev(params[:q])

      return erb :result if @data['status'] == 200
    end 
    erb :home, layout: :layout
  end
end

