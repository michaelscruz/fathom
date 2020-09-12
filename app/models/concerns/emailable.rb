module Emailable
  extend ActiveSupport::Concern

  included do
    validates :email, email: true
  end
end
