class DummyController < ApplicationController
  def show
    document = TestDocument.new("test")
    send_pdf document
  end
end
