require 'test_helper'

class Dashboard::DashboardSummarySectionComponentTest < ApplicationComponentTest

  test "component should render the section title" do
    render_inline(Dashboard::DashboardSummarySectionComponent.new(title: 'entries', count: 374))
    assert_selector "[class='#{root_class_name}']"
    assert_selector '[class="section-title"]', text: 'ENTRIES'
  end

  test "component should render the count" do
    render_inline(Dashboard::DashboardSummarySectionComponent.new(title: 'entries', count: 374))
    assert_selector "[class='#{root_class_name}']"
    assert_selector '[class="section-count"]', text: '374'
  end

  private

    def root_class_name
      'dashboard--dashboard-summary-section-component'
    end
end
