require 'test_helper'

class DashboardIntegrationTest < ApplicationIntegrationTest

  setup do
    sign_in learners(:anakin)
  end

  test "root url should be dashboard" do
    get root_url
    assert_select 'title', text: 'Fathom | Dashboard'
  end

  test "should be able to get the index" do
    get root_url
    assert_response :success
  end
end
