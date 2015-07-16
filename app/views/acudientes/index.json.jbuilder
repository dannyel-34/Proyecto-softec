json.array!(@acudientes) do |acudiente|
  json.extract! acudiente, :id, :nombre, :primer_apellido, :segundo_apellido, :nombre_completo, :mail, :telefono, :documento, :tipo_doc_id, :estado_civil_id, :fch, :direccion, :municipio_id
  json.url acudiente_url(acudiente, format: :json)
end
