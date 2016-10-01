class Homework < ApplicationRecord

  belongs_to :created_by, class_name: 'User'

  has_many :assignments
  has_many :submissions

end
