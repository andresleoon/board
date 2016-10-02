class SubmissionFile < ApplicationRecord
  has_attached_file :file
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/

  belongs_to :submission
end
