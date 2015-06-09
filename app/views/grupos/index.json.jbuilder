json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :nombre, :cod, :fch_ini, :fch_fin, :lugar, :notas, :maximo_alumnos, :numero_alumnos, :horario, :curso_id
  json.url grupo_url(grupo, format: :json)
end
