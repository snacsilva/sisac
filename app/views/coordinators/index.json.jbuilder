json.array!(@coordinators) do |coordinator|
  json.extract! coordinator, :id, :course_id, :employee
  json.url coordinator_url(coordinator, format: :json)
end
