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

    @key = ENV['HABLUHABLU_API_KEY']

    if @key.nil?
      @request["x-rapidapi-key"] = 'Add your google api key!'
    else
      @request["x-rapidapi-key"] = @key
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
