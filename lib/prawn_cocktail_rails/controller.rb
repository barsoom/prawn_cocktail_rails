module PrawnCocktailRails
  module Controller
    private

    def send_pdf(document, opts = {})
      disposition = opts.fetch(:disposition, "attachment")

      send_data(
        document.render,
        type: :pdf,
        disposition: disposition,
        filename: document.filename
      )
    end
  end
end
