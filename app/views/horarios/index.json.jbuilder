json.array!(@horarios) do |horario|
  json.extract! horario, :id, :asiste, :fch, :curso_id, :profesor_id, :alumno_id
  json.url horario_url(horario, format: :json)
end
