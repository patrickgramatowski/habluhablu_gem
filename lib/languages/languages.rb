# frozen_string_literal: true

require "yaml"

# Class comment
class Languages
  def initialize(language)
    @language = language.to_sym
    @languages = {
      ar: {
        ar: { welcome: "مرحبا" }
      },
      en: {
        en: { welcome: "Welcome" }
      },
      es: {
        es: { welcome: "Bienvenido" }
      },
      pl: {
        pl: { welcome: "Witaj" }
      },
      iw: {
        iw: { welcome: "שלום" }
      }
    }
  end

  def include_language?
    @languages.key?(@language) ? true : false
  end

  def render
    @languages.key?(@language) ? @languages[@language].to_yaml : "No language in the lib."
  end
end
