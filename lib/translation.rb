# frozen_string_literal: true

require "uri"
require "net/http"
require "openssl"

# Class comment
class Translation
  def initialize(text, target, source = "en")
    @text = text
    @target = target
    @source = source
    @url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")

    @http = Net::HTTP.new(@url.host, @url.port)
    @http.use_ssl = true
    @http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    @request = Net::HTTP::Post.new(@url)
    @request["content-type"] = "application/x-www-form-urlencoded"
    @request["accept-encoding"] = "application/gzip"
    @request["x-rapidapi-key"] = '89b4128ab1msh3cd8b86cdb0fec2p1e1b5bjsn59a3eed82a2f'
    @request["x-rapidapi-host"] = "google-translate1.p.rapidapi.com"
    @request.body = @text.gsub(" ", "%2C%20") + "!&target=#{@target}&source=#{@source}"
    # Example "q=Hello%2C%20dear%2C%20friend!&target=es&source=en"
  end

  def response
    puts @request["x-rapidapi-key"]
    response = @http.request(@request)
    res = response.read_body
    File.open("config/locales/#{@target}.yml", "a+") do |f|
      f.write({ "translation" => res.to_s }.to_yaml)
    end
  end
end
