json.array!(@profesors) do |profesor|
  json.extract! profesor, :id, :nombre, :primer_apellido, :segundo_apellido, :nombre_completo, :direccion, :telefono, :doc_identidad, :tipo_doc_id, :estado_civils_id
  json.url profesor_url(profesor, format: :json)
end
