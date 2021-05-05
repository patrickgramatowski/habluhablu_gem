# frozen_string_literal: true

require_relative "habluhablu/version"

# Module HabluHablu
module Habluhablu
  class Error < StandardError; end

  def self.hablu(language)
    File.open("./config/locales/es.yml", "a+") do |f|
      File.open("./languages/#{language}.yml") do |i18n|
        f.write(i18n.read.to_s)
      end
    end
  end
end
