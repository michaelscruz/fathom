module Dashboard
  class DashboardSummarySectionComponent < ApplicationComponent
    with_slot :icon

    def initialize(title:, count:)
      @title = title
      @count = count
    end

    private
      attr_reader :count

      def title_text
        @title.upcase
      end

      def icon_content
        icon&.content
      end
  end
end
