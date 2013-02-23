# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prawn_cocktail_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "prawn_cocktail_rails"
  gem.version       = PrawnCocktailRails::VERSION
  gem.authors       = ["Henrik Nyh"]
  gem.email         = ["henrik@barsoom.se"]
  gem.summary       = "PrawnCocktail on Rails."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "prawn_cocktail", ">=0.4.0"
end
