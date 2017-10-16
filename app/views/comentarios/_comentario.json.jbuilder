json.extract! comentario, :id, :usuario, :texto, :rate, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
