class Consultum < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :curso
  belongs_to :grupo
  belongs_to :horario
  belongs_to :institucion
  belongs_to :sucursal
  belongs_to :profesor
  belongs_to :assistance
end
