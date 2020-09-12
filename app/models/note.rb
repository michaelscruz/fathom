class Note < ApplicationRecord
  include Learnerable

  validates_presence_of :title, :body
end
