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
    @request["x-rapidapi-key"] = '069f34f2bamsha3ef70a3f7e20cap1dcfe9jsn2dcff8d20c4e'
    @request["x-rapidapi-host"] = "google-translate1.p.rapidapi.com"
    @request.body = @text.gsub(" ", "%2C%20") + "!&target=#{@target}&source=#{@source}"
    # Example "q=Hello%2C%20dear%2C%20friend!&target=es&source=en"
  end

  def response
    response = @http.request(@request)
    res = response.read_body
    File.open("config/locales/#{@target}.yml", "a+") do |f|
      f.write({ "translation" => res.to_s }.to_yaml)
    end
  end
end
