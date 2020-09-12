module LearnerableTest
  extend ActiveSupport::Concern

  MODULE_NAME = name

  included do
    test "learnerable should respond to learner" do
      assert learnerable.respond_to? :learner
    end

    test "learnerable should respond to learner_id" do
      assert learnerable.respond_to? :learner_id
    end

    test "learnerable should not be valid when learner is not present" do
      learnerable.learner = nil
      refute learnerable.valid?
      assert learnerable.errors[:learner].present?
    end

    test "learnerable should not be valid when learner is not a Learner instance" do
      learner_like = OpenStruct.new(id: 1, first_name: 'Fake', last_name: 'Person', email: 'fake@person.com')
      assert_raise ActiveRecord::AssociationTypeMismatch do
        learnerable.learner = learner_like
      end
    end
  end

  private

    def learnerable
      @learnerable ||
        (raise NotImplementedError, "Test cases implementing #{MODULE_NAME} must define '@learnerable' object in test setup")
    end
end
