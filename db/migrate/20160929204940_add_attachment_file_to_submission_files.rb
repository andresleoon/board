class AddAttachmentFileToSubmissionFiles < ActiveRecord::Migration
  def self.up
    change_table :submission_files do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :submission_files, :file
  end
end
