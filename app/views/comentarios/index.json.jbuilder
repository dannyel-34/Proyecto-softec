json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :nombre, :mail, :asunto, :mensaje
  json.url comentario_url(comentario, format: :json)
end
