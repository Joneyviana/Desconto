json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :data_de_nascimento, :email
  json.url cliente_url(cliente, format: :json)
end
