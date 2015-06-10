class Horario < ActiveRecord::Base
  belongs_to :profesor
  
  validates :diasSemana, :presence => true
  validates :profesor, :presence => true
  
end
