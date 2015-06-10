class Grupo < ActiveRecord::Base
  belongs_to :curso
  
  #valida campos obligatotorios
  validates :nombre, :presence => true
  validates :cod, :presence => true
  validates :lugar, :presence => true
  validates :maximo_alumnos, :presence => true
  validates :numero_alumnos, :presence => true
  validates :horario, :presence => true
  
  # Valida si un atributo es numerico 
  validates :maximo_alumnos, numericality: true
  validates :numero_alumnos, numericality: true
  
  # valida la longitud de un campo, tanto la longitud minima como la maxima 
  validates :cod, length: { minimum: 5, maximum: 20 } 
  validates :nombre, length: { minimum: 5, maximum: 50 }
  
  # validar que un atributos unicos 
  validates :nombre, uniqueness: { message: "No se puede Repetir" } 
  validates :cod, uniqueness: { message: "No se puede Repetir" }
  validates :lugar, uniqueness: { message: "No se puede Repetir" }
  validates :maximo_alumnos, uniqueness: { message: "No se puede Repetir" }
  validates :numero_alumnos, uniqueness: { message: "No se puede Repetir" }
  
end
