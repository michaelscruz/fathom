module PersonableTest
  extend ActiveSupport::Concern

  MODULE_NAME = name

  included do
    test "personable should respond to first_name" do
      assert personable.respond_to? :first_name
    end

    test "personable should respond to last_name" do
      assert personable.respond_to? :last_name
    end
  end

  private

    def personable
      @personable ||
        (raise NotImplementedError, "Test cases implementing #{MODULE_NAME} must define '@personable' object in test setup")
    end
end
