json.array!(@promocaos) do |promocao|
  json.extract! promocao, :id, :nome, :data_inicio, :data_fim, :porcentagem
  json.url promocao_url(promocao, format: :json)
end
