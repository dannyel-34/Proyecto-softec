json.array!(@horarios) do |horario|
  json.extract! horario, :id, :fch_ini, :fch_fin, :diasSemana, :profesor_id
  json.url horario_url(horario, format: :json)
end
