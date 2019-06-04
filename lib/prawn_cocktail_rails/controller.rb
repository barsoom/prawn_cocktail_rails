module PrawnCocktailRails
  module Controller
    private

    def send_pdf(document, disposition: "attachment")
      send_data(
        document.render,
        type: :pdf,
        disposition: disposition,
        filename: document.filename,
      )
    end
  end
end
