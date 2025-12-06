require "json"
require "http/client"

class FraudEmail
  def initialize()
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.fraudemail.com")
    @http_client = HTTP::Client.new(uri)
  end

  def check_email(email : String) : JSON::Any
    body = {"email": email}.to_json
    JSON.parse(@http_client.post(
      "/email", body: body, headers: @headers).body)
  end
end
