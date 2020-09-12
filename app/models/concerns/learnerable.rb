module Learnerable
  extend ActiveSupport::Concern

  included do
    belongs_to :learner, required: true
  end
end
