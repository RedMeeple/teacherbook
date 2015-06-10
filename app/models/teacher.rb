class Teacher < ActiveRecord::Base
  has_many :students, through: :student_teacher_relationship
  has_many :parents, through: :students
  has_secure_password

end
