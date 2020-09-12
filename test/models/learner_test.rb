require 'test_helper'
require_relative './concerns/emailable_test'
require_relative './concerns/personable_test'

class LearnerTest < ActiveSupport::TestCase
  include EmailableTest
  include PersonableTest

  setup do
    @learner = @emailable = @personable = Learner.new
  end

  test "a learner without a first name should not be valid" do
    learner = Learner.new(last_name: 'Last', email: 'last@only.com')
    refute learner.valid?
    assert learner.errors[:first_name].present?
  end

  test "a learner without a last name should not be valid" do
    learner = Learner.new(first_name: 'First', email: 'first@only.com')
    refute learner.valid?
    assert learner.errors[:last_name].present?
  end

  test "a learner without an email should not be valid" do
    learner = Learner.new(first_name: 'First', last_name: 'Last')
    refute learner.valid?
    assert learner.errors[:email].present?
  end

  test "a learner with an email that is already taken should not be valid" do
    learner = Learner.new(first_name: 'Someone', last_name: 'Invalid', email: learners(:anakin).email)
    refute learner.valid?
    assert learner.errors[:email].present?
  end
end
