module Dashboard
  class DashboardSummarySectionComponent < ApplicationComponent

    def initialize(title:, count:)
      @title = title
      @count = count
    end

    private
      attr_reader :count

      def title_text
        @title.upcase
      end
  end
end
