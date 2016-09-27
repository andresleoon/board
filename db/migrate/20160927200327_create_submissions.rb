class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :user_id
      t.string :homework_id

      t.timestamps
    end
  end
end
