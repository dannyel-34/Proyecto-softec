class Assistance < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :profesor
  belongs_to :curso
  belongs_to :grupo
  belongs_to :horario
end
