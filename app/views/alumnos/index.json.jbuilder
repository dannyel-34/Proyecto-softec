json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :ficha, :nombre, :primer_apellido, :segundo_apellido, :nombre_completo, :tel, :direccion, :municipio_id, :celular, :doc, :tipo_doc_id, :fch_nacimiento, :estado_civil_id
  json.url alumno_url(alumno, format: :json)
end
