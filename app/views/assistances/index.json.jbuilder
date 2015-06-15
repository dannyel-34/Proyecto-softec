json.array!(@assistances) do |assistance|
  json.extract! assistance, :id, :alumno_id, :profesor_id, :curso_id, :grupo_id, :horario_id, :fch
  json.url assistance_url(assistance, format: :json)
end
