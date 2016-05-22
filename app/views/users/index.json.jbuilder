json.array!(@users) do |user|
  json.extract! user, :id, :name, :data_nascimento, :num_identidade, :cpf, :cidade, :estado, :telefone, :celular, :email, :login, :password_digest
  json.url user_url(user, format: :json)
end
