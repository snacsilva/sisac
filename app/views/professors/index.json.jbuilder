json.array!(@professors) do |professor|
  json.extract! professor, :id, :course_id, :classe_id
  json.url professor_url(professor, format: :json)
end
