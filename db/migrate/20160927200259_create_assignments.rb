class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :homework_id
      t.integer :user_id

      t.timestamps
    end
  end
end
