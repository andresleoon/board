class Assignment < ApplicationRecord
  after_save :create_empty_submission

  belongs_to :homework

  belongs_to :user

  private

    def create_empty_submission
      Submission.find_or_create_by(
        homework: self.homework,
        user: self.user
      )
    end

end
