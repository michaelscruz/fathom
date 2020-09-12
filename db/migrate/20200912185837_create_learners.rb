class CreateLearners < ActiveRecord::Migration[6.0]
  def change
    create_table :learners do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
      t.string :email,      null: false

      t.timestamps
    end
  end
end