# frozen_string_literal: true

require_relative "habluhablu/version"
require_relative "languages/languages"

# Module HabluHablu
module Habluhablu
  class Error < StandardError; end

  # Raise error if wrong language symbol passed
  class NoLanguageSymbolYet < Error
    def initialize
      super("No language in the lib (YET!)")
    end
  end

  # Cutom error with helpful message
  class WrongSymbolError < Error
    def initialize(language)
      super("Wrong language symbol: #{language}!")
    end
  end

  # Cutom error with helpful message
  class NoSampleError < Error
    def initialize
      super("There is no sample.yml file!")
    end
  end

  # Cutom error with helpful message
  class GemI18nError < Error
    def initialize
      super("Install I18n gem!")
    end
  end

  def self.hablu(language)
    # Check if I18n gem is included
    # if not, raise the custom error
    if Dir.exist?("./config/locales").eql?(false)
      raise GemI18nError.new
    end

    # Check if specified symbol's language does exist
    # if not, raise the custom error
    language_class = Languages.new(language)
    if language_class.include_language? == false
      raise WrongSymbolError.new(language)
    end

    # Create a file of specified language
    File.open("./config/locales/#{language}.yml", "w") do |f|
      f.write(language_class.render)
    end
  end

  def self.keyword(keyword)
    languages = Dir["config/locales/*.yml"]
    languages.each do |file|
      File.open(file.to_s, "a") do |f|
        f.write(%(\n  #{keyword}: => ""))
      end
    end
  end

  def self.render_sample(languages)
    raise NoSampleError.new unless File.exist?("config/locales/sample.yml")

    languages = languages.split("_")
    languages.each do |language|
      File.open("config/locales/sample.yml", "r") do |f|
        File.open("config/locales/#{language}.yml", "a+") do |fl|
          fl.write(f.read)
        end
      end
    end
  end
end
