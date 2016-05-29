json.array!(@students) do |student|
  json.extract! student, :id, :course_id, :employee
  json.url student_url(student, format: :json)
end
