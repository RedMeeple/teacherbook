class Parent < ActiveRecord::Base
  has_many :student_parent_relationships
  has_many :students, through: :student_parent_relationship

  def teacher
    self.student.teacher.name
  end

end
