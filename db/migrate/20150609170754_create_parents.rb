class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.string :phone_number
      t.boolean :answers_phone_if_from_school
      t.boolean :has_respect_for_teachers
      t.string :email
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
