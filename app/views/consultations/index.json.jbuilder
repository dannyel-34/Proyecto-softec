json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :alumno_id, :curso_id, :grupo_id, :horario_id, :institucion_id, :sucursal_id, :profesor_id, :assistance_id, :user_id
  json.url consultation_url(consultation, format: :json)
end
