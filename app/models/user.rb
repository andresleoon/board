class User < ApplicationRecord
  validates_inclusion_of :kind, :in => %w(teacher student),
    :message => "%{value} is not a valid type"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Many relationships.
  has_many :homeworks, foreign_key: 'created_by_id'
  has_many :assignments

  def full_name
    "#{self.first_name } #{self.last_name}"
  end

  def is_teacher
    self.kind == 'teacher'
  end

  def is_student
    self.kind == 'student'
  end

end
