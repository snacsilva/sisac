json.array!(@functions) do |function|
  json.extract! function, :id, :nome
  json.url function_url(function, format: :json)
end
