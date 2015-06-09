class Parent < ActiveRecord::Base
  belongs_to :student

  def teacher
    self.student.teacher.name
  end

end
