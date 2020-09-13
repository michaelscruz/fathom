require_relative 'application_controller_test_helper'

class NotesControllerTest < ApplicationControllerTest

  test "getting the index should call authenticate_learner!" do
    assert_authentication_required do
      get :index
    end
  end
end
