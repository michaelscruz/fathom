ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require_relative './test_helpers/associations_test_helper'
require 'rails/test_help'

class ActiveSupport::TestCase
  include TestHelpers::AssociationsTestHelper
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

require_relative './components/application_component_test_helper'
require_relative './integration/application_integration_test_helper'
