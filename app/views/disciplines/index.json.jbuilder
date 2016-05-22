json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :nome
  json.url discipline_url(discipline, format: :json)
end
