# frozen_string_literal: true

require "uri"
require "net/http"
require "openssl"
require "json"
require "yaml"

# Class comment
class Translation
  def initialize(text, target, source = "en")
    @text = text.gsub("_", "%2C%20")
    @target = target
    @source = source
    @url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")

    @http = Net::HTTP.new(@url.host, @url.port)
    @http.use_ssl = true
    @http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    @request = Net::HTTP::Post.new(@url)
    @request["content-type"] = "application/x-www-form-urlencoded"
    @request["accept-encoding"] = "application/gzip"
    File.open("config/locales/api_key.txt", "a+") do |f|
      $KEY = f.read
    end
    if $KEY.length <= 2 || $KEY.nil?
      @request["x-rapidapi-key"] = 'ef9f61b3d0mshb95dcad44627e7cp176d4bjsn8f4d9e2a1706'
    else
      @request["x-rapidapi-key"] = $KEY
    end
    @request["x-rapidapi-host"] = "google-translate1.p.rapidapi.com"
    @request.body = "q=#{@text}!&target=#{@target}&source=#{@source}"
    # Example "q=Hello%2C%20dear%2C%20friend!&target=es&source=en"
  end

  def response
    response = @http.request(@request)
    content = JSON.parse(response.read_body)
    content = content["data"]["translations"].first["translatedText"]
    File.open("config/locales/#{@target}.yml", "a+") do |f|
      f.write({ "translation" => content.to_s }.to_yaml)
    end
  end
end

tr = Translation.new("Hi_there", "es")
tr.response
