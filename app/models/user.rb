class User < ApplicationRecord
  validates_inclusion_of :kind, :in => %w(teacher student),
    :message => "%{value} is not a valid type"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def is_teacher
    self.kind == 'teacher'
  end

  def is_student
    self.kind == 'student'
  end

end
