json.array!(@employees) do |employee|
  json.extract! employee, :id, :funcao_id, :setor_id
  json.url employee_url(employee, format: :json)
end
