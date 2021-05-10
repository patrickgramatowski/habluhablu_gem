# frozen_string_literal: true

require_relative "habluhablu/version"
require_relative "languages/languages"

# Module HabluHablu
module Habluhablu
  class Error < StandardError; end

  # Cutom error with helpful message
  class WrongSymbolError < Error
    def initialize(language)
      super("Wrong language symbol: #{language}!")
    end
  end

  # Cutom error with helpful message
  class GemI18nError < Error
    def initialize
      super("Install I18n gem!")
    end
  end

  def self.hablu(language, lorem = false)
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

    if lorem.eql?(true)
      language_class.include_lorem(lorem)
    end

    # Create a file of specified language
    File.open("./config/locales/#{language}.yml", "w") do |f|
      f.write(language_class.render)
    end
  end
end
