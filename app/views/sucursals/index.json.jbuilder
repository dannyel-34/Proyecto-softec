json.array!(@sucursals) do |sucursal|
  json.extract! sucursal, :id, :cod, :sede, :direccion, :email, :institucion_id
  json.url sucursal_url(sucursal, format: :json)
end
