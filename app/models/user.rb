class User < ApplicationRecord
  validates_inclusion_of :kind, :in => %w(teacher student),
    :message => "%{value} is not a valid type"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
