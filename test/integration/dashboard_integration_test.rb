require 'test_helper'

class DashboardIntegrationTest < ApplicationIntegrationTest

  setup do
    sign_in learners(:jedi)
  end

  test "root url should be dashboard" do
    get root_url
    assert_select 'title', text: 'Fathom | Dashboard'
  end

  test "should be able to get the index" do
    get root_url
    assert_response :success
  end

  test "index should have header component rendered" do
  end

  test "index should have a search component rendered" do
  end

  test "index should have the expected number of section components" do
    Dashboard::DashboardSummarySectionComponent.expects(:new).with(title: 'entries', count: 374).returns(mock_component)
    Dashboard::DashboardSummarySectionComponent.expects(:new).with(title: 'authors', count: 34).returns(mock_component)
    Dashboard::DashboardSummarySectionComponent.expects(:new).with(title: 'sources', count: 56).returns(mock_component)
    Dashboard::DashboardSummarySectionComponent.expects(:new).with(title: 'themes', count: 120).returns(mock_component)
    Dashboard::DashboardSummarySectionComponent.expects(:new).with(title: 'characters', count: 23).returns(mock_component)
    Dashboard::DashboardSummarySectionComponent.expects(:new).with(title: 'shared', count: 4).returns(mock_component)
    get root_url
  end

  test "index should have add button component rendered" do
  end
end
