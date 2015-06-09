json.array!(@cursos) do |curso|
  json.extract! curso, :id, :nombre, :descripcion, :fch_ini, :fch_fin
  json.url curso_url(curso, format: :json)
end
