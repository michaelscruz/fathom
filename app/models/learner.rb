class Learner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable
  include Emailable

  has_many :notes

  validates_presence_of :first_name, :last_name
  validates :email, presence: true, uniqueness: true
end
