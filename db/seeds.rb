# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |n|
  Teacher.create(name: Faker::Name.name, email: Faker::Internet.email,
      password: "password")
end

100.times do
  Student.create(name: Faker::Name.name, grade: ['A', 'B', 'C', 'D', 'F'].sample,
      teacher_id: (1..5).to_a.sample)
end

100.times do |n|
  Parent.create(name: Faker::Name.name, email: Faker::Internet.email,
      phone_number: Faker::PhoneNumber.phone_number, has_respect_for_teachers: [true, false].sample,
      answers_phone_if_from_school: [true, false].sample, student_id: n+1)
end

100.times do |n|
  StudentTeacherRelationship.create(student_id: n+1, teacher_id: (1..5).to_a.sample)
end

100.times do |n|
  StudentParentRelationship.create(student_id: n+1, parent_id: n+1)
end
