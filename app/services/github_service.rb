# frozen_string_literal: true


require 'net/http'
require 'json'

class GithubService
  API_URL = 'https://api.github.com'
  
  def self.search_dev(username)
    username = username
                       .gsub(/^[a-z][a-z0-9\s+]{0,38}$/, '')
                       .gsub(/\s+/, '')
                       .gsub(/\+/, '')
    url = "#{API_URL}/users/#{username}"
    uri = URI(url)
    begin
      request = Net::HTTP.get(uri)
      response = JSON.parse(request)
      
      return {'status' => 404} if response.empty? || response['message'] == 'Not Found'

      {'status' => 200, 'result' => response}
    rescue
      {'status' => 500}
    end
  end
end

