require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/cuprite'
Capybara.javascript_driver = :cuprite

Capybara.register_driver :cuprite do |app|
  Capybara::Cuprite::Driver.new(
    app,
    browser_options: {
      'no-sandbox': nil
    }
  )
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
