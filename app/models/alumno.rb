class Alumno < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :tipo_doc
  belongs_to :estado_civil
end
