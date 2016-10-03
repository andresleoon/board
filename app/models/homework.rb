class Homework < ApplicationRecord
  validates :due_date, :presence => true
  belongs_to :created_by, class_name: 'User'

  has_many :assignments
  has_many :submissions

  def is_due
    self.due_date <= DateTime.now
  end

end
