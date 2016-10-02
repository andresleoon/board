class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :homework

  has_many :submission_files

end
