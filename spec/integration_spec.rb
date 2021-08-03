# Load dummy Rails app.
ENV["RAILS_ENV"] ||= "test"
require_relative "dummy/config/environment.rb"
require "rails/test_help"

require "pdf/inspector"
require "minitest/pride"

class IntegrationTest < ActionController::TestCase
  tests DummyController

  def test_integration
    get :show
    assert_header "Content-Type", "application/pdf"
    assert_match %r{attachment; filename="test\.pdf"}, response.headers["Content-Disposition"]
    assert_pdf_strings [
      "Helper works.",
      "Message: test.",
    ]
  end
end

def assert_header(name, value)
  assert_equal value, response.headers[name]
end

def assert_pdf_strings(strings)
  assert_equal strings, parse_strings(response.body)
end

def parse_strings(pdf_data)
  PDF::Inspector::Text.analyze(pdf_data).strings
end
