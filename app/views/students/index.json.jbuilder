json.array!(@students) do |student|
  json.extract! student, :id, :name, :graduation_year, :email, :contact
  json.url student_url(student, format: :json)
end
