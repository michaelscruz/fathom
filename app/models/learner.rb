class Learner < ApplicationRecord
  include Emailable

  has_many :notes

  validates_presence_of :first_name, :last_name
  validates :email, presence: true, uniqueness: true
end
