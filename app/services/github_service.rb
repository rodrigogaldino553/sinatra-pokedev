# frozen_string_literal: true


require 'net/http'
require 'json'

class GithubService
  API_URL = 'https://api.github.com'
  
  def self.search_dev(username)
    url = "#{API_URL}/users/#{username}"
    uri = URI(url)
    begin
      request = Net::HTTP.get(uri)
      response = JSON.parse(request)
      
      return nil if response.empty? || response['message'] == 'Not Found'

      response
    rescue
      nil
    end
  end
end

