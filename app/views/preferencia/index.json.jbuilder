json.array!(@preferencia) do |preferencium|
  json.extract! preferencium, :id, :produto_id, :cliente_id
  json.url preferencium_url(preferencium, format: :json)
end
