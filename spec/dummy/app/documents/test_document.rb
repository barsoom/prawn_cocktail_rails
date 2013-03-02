class TestDocument < PrawnCocktail::Document
  helper TestDocumentHelper

  def initialize(message)
    @message = message
  end

  def filename
    "test.pdf"
  end

  private

  def data
    { message: @message }
  end
end
