# frozen_string_literal: true

module HttpStatusHelper
  def self.http_message(status_code)
    case status_code
    when 200
      {"message" => "Success!", "color" => "primary"}
    when 400
      {"message" => "You have typed something wrong!", "color" => "warning"}
    when 404
      {"message" => "Not found!", "color" => "danger"}
    when 503
      {"message" => "Sorry, We gotta a problem!", "color" => "warning"}
    else
      {"message" => "We gotta a error #{status_code}!", "color" => "warning"}
    end
  end
end
