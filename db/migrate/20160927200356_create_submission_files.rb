class CreateSubmissionFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :submission_files do |t|
      t.integer :submission_id
      t.string :file

      t.timestamps
    end
  end
end
