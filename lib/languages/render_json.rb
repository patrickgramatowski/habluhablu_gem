# frozen_string_literal: true

require "json"

# Class comment
module RenderJson
  def render_json(languages_input)
    # "ar" || "ar_iw_pl"
    languages_input = languages_input.split("_")
    languages_input.each do |language|
      next unless @languages.key?(language.to_sym)

      File.open("config/locales/#{language}.json", "a+") do |f|
        f.write(@languages[language.to_sym].to_json)
      end
    end
  end
end
