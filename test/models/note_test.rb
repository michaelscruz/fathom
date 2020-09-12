require 'test_helper'

class NoteTest < ActiveSupport::TestCase

  test "a new note with a title and body should be valid" do
    note = Note.new(title: 'New Note', body: 'Some text')
    assert note.valid?
  end

  test "a note should not be valid without a title" do
    note = Note.new(body: 'Some body text for this title-less note')
    refute note.valid?
  end

  test "a note should not be valid without a body" do
    note = Note.new(title: 'No body')
    refute note.valid?
  end
end
