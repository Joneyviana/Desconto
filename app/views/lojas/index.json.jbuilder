json.array!(@lojas) do |loja|
  json.extract! loja, :id, :nome, :descricao, :cnpj
  json.url loja_url(loja, format: :json)
end
