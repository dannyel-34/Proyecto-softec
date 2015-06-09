json.array!(@institucions) do |institucion|
  json.extract! institucion, :id, :cod, :nombre, :email, :direccion, :telefono
  json.url institucion_url(institucion, format: :json)
end
