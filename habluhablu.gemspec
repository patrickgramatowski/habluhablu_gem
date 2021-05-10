# frozen_string_literal: true

require_relative "lib/habluhablu/version"

Gem::Specification.new do |spec|
  spec.name          = "habluhablu"
  spec.version       = Habluhablu::VERSION
  spec.authors       = ["Patrick Gramatowski"]
  spec.email         = ["patrick.gramatowski@gmail.com"]

  spec.summary       = "HabluHablu makes it easier to use I18n."
  spec.description   = "Generate language file (for I18n) with translations of the most useful phrases."
  spec.homepage      = "https://github.com/patrickgramatowski/habluhablu_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
