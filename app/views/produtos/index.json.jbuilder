json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :descricao, :preco, :loja_id, :promocao_id
  json.url produto_url(produto, format: :json)
end
