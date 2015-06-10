class CreateStudentParentRelationships < ActiveRecord::Migration
  def change
    create_table :student_parent_relationships do |t|
      t.integer :student_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
