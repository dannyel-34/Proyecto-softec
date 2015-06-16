json.array!(@consulta) do |consultum|
  json.extract! consultum, :id, :alumno_id, :curso_id, :grupo_id, :horario_id, :institucion_id, :sucursal_id, :profesor_id, :assistance_id
  json.url consultum_url(consultum, format: :json)
end
