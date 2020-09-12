module EmailableTest
  extend ActiveSupport::Concern

  MODULE_NAME = name

  included do
    test "emailable should respond to email" do
      assert emailable.respond_to? :email
    end

    test "emailable should not be valid with invalid email" do
      emailable.email = 'aninvalidemail.com'
      refute emailable.valid?
      assert emailable.errors[:email].present?
    end

    private

      def emailable
        @emailable ||
          (raise NotImplementedError, "Test cases implementing #{MODULE_NAME} must define '@emailable' object in test setup")
      end
  end
end
