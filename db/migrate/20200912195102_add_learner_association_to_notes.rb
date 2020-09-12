class AddLearnerAssociationToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :learner_id, :integer, null: false
    add_index :notes, :learner_id
    add_foreign_key :notes, :learners, on_delete: :cascade
  end
end
