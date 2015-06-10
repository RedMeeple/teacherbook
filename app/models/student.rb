class Student < ActiveRecord::Base
  has_many :student_parent_relationships
  has_many :parents, through: :student_parent_relationship
  has_many :student_teacher_relationships
  has_many :teachers, through: :student_teacher_relationship
end
