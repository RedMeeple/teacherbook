json.array!(@parents) do |parent|
  json.extract! parent, :id, :name, :phone_number, :answers_phone_if_from_school, :has_respect_for_teachers, :email, :student_id
  json.url parent_url(parent, format: :json)
end
