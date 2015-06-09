json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :pr_nombre, :sr_nombre, :pr_apellido, :sr_apellido, :mail, :tipo_doc_id, :num_doc, :municipio_id, :genero, :fch_nacimiento, :direccion, :telefono
  json.url estudiante_url(estudiante, format: :json)
end
