class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_many :parents, through: :students
  has_secure_password
end
