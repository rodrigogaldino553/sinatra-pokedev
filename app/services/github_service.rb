# frozen_string_literal: true

require "net/http"
require "json"

module GithubService
  API_URL = "https://api.github.com"

  def self.search_dev(username)
    return {"status" => 400} unless GithubService.validate_username(username)

    user_result = GithubService.search(username)
    return {"status" => 500} if user_result == 500
    return {"status" => 404} if user_result.empty? || user_result["message"] == "Not Found"
    {"status" => 200, "result" => user_result}
  end

  def self.username_checker(username)
    return username
  end

  private

  def self.validate_username(username)
    # TODO: fix it!
    github_username_regex = /^[A-Za-z][0-9\s-]{0,38}$/
    username = username
      .gsub(/\s/, "")
    false unless username.match?(github_username_regex)
    username
  end

  def self.search(username)
    url = "#{API_URL}/users/#{username}"
    begin
      uri = URI(url)
      request = Net::HTTP.get(uri)
      response = JSON.parse(request)

      return response
    rescue
      return false
    end
  end
end
