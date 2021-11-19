# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prawn_cocktail_rails/version"

Gem::Specification.new do |gem|
  gem.name          = "prawn_cocktail_rails"
  gem.version       = PrawnCocktailRails::VERSION
  gem.authors       = [ "Henrik Nyh" ]
  gem.email         = [ "henrik@barsoom.se" ]
  gem.summary       = "Simple documents, templates and helpers on top of Prawn. In Ruby on Rails."
  gem.homepage      = ""
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = [ "lib" ]

  gem.add_dependency "prawn_cocktail", ">=0.4.0"
  gem.add_dependency "rails"

  gem.add_development_dependency "rake"  # For Travis CI.
  gem.add_development_dependency "pdf-inspector"
end
