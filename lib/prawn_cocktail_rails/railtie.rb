require "rails"

module PrawnCocktailRails
  class Railtie < Rails::Railtie
    initializer "prawn_cocktail.autoload", before: :set_autoload_paths do |app|
      app.config.autoload_paths << "#{app.config.root}/app/documents/helpers"
    end

    initializer "prawn_cocktail.set_template_root" do |app|
      PrawnCocktail.template_root = app.config.root.join("app/views/documents")
    end
  end
end
