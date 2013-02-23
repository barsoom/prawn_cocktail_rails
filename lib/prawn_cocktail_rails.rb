require "prawn_cocktail_rails/version"
require "prawn_cocktail_rails/controller"
require "prawn_cocktail_rails/railtie"
require "prawn_cocktail"

class ActionController::Base
  include PrawnCocktailRails::Controller
end

PrawnCocktail.template_root = "app/views/documents"
