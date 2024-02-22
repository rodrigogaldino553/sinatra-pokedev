# frozen_string_literal: true

require "./app/services/github_service"
require "./app/helpers/http_status_helper"

helpers HttpStatusHelper

class HomeController < Sinatra::Base
  get "/" do
    unless params[:q].nil?
      @data = GithubService.search_dev(params[:q])
      @data["alert_message"] = HttpStatusHelper.http_message(@data["status"])

      return erb :result if @data["status"] == 200
    end
    erb :home, layout: :layout
  end

  get "/username_checker" do
    unless params[:username].nil?
      @username = params[:username]
      @result = GithubService.username_checker(@username)
    end
    erb :username_checker, layout: :layout
  end
end
