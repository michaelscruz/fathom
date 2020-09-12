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

    private

      def personable
        raise NotImplementedError, "Test cases implementing #{MODULE_NAME} must override 'personable' method to return a personable object"
      end
  end
end
