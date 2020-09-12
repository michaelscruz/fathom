require 'test_helper'
require_relative './concerns/learnerable_test'

class NoteTest < ActiveSupport::TestCase
  include LearnerableTest

  setup do
    @note = @learnerable = Note.new
  end

  test "a note should not be valid without a title" do
    note = Note.new(body: 'Some body text for this title-less note')
    refute note.valid?
    assert note.errors[:title].present?
  end

  test "a note should not be valid without a body" do
    note = Note.new(title: 'No body')
    refute note.valid?
    assert note.errors[:body].present?
  end
end
