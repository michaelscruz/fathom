require 'test_helper'

class ApplicationControllerTest < ActionController::TestCase

  private

    def assert_authentication_required
      override_authenticate_learner!
      @controller.authentication_required = false
      yield
      assert @controller.authentication_required, "expected authentication to be required, but it was not"
    end

    def override_authenticate_learner!
      def @controller.authenticate_learner!
        @authentication_required = true
      end

      def @controller.authentication_required
        @authentication_required || false
      end

      def @controller.authentication_required= val
        @authentication_required = val
      end
    end

    def set_authentication_required_to_true
      @authenication_required = true
    end
end
