class Horario < ActiveRecord::Base
  belongs_to :curso
  belongs_to :profesor
  belongs_to :alumno
end
