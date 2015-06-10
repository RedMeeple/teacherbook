class CreateStudentTeacherRelationships < ActiveRecord::Migration
  def change
    create_table :student_teacher_relationships do |t|
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
