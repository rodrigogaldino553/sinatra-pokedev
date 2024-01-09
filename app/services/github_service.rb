# frozen_string_literal: true


require 'net/http'
require 'json'

class GithubService
  API_URL = 'https://api.github.com'
  GITHUB_USERNAME_REGEX = /^[a-z][a-z0-9\s+]{0,38}$/
  
  def self.search_dev(username)
    username = username
                       .gsub(/\s+/, '')
                       .gsub(/\+/, '')
    
    return {'status' => 400, 'message' => 'Invalid username!'} unless username.match?(GITHUB_USERNAME_REGEX) 

    url = "#{API_URL}/users/#{username}"
    begin
      uri = URI(url)
      request = Net::HTTP.get(uri)
      response = JSON.parse(request)

      return {'status' => 404, 'message' => 'Dev not found!'} if response.empty? || response['message'] == 'Not Found'

      {'status' => 200, 'result' => response}
    rescue
      {'status' => 500, 'message' => 'Sorry! There are some problem with our systems'}
    end
  end
end

