# frozen_string_literal: true


require 'net/http'
require 'json'

class GithubService
  def self.search_dev(username)
    url = "https://api.github.com/users/#{username}"
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

