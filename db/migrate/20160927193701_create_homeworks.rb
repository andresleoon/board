class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.text :description
      t.integer :created_by_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
