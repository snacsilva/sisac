json.array!(@classes) do |class|
  json.extract! class, :id, :codigo, :course_id, :discipline_id, :num_aluno
  json.url class_url(class, format: :json)
end
