class Profesor < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :estado_civils
  
  #valida campos obligatorios
  validates :nombre, :presence => true
  validates :nombre_completo, :presence => true
  validates :direccion, :presence => true
  validates :telefono, :presence => true
  validates :doc_identidad, :presence => true
  
  #valida si un atrubuto es numerico
  validates :doc_identidad, numericality: true
  validates :telefono, numericality: true
  
  # valida la longitud de un campo, tanto la longitud minima como la maxima 
  validates :doc_identidad, length: { minimum: 5, maximum: 30 } 
  validates :nombre, length: { minimum: 5, maximum: 50 }
  validates :primer_apellido, length: {minimun: 5, maximum: 90}
  validates :segundo_apellido, length: {minimum: 5, maximum: 90}
  
  
  # validar que un atributos unicos 
  validates :doc_identidad, uniqueness: { message: "No se puede Repetir" } 
  validates :primer_apellido, uniqueness: { message: "No se puede Repetir" }
  validates :segundo_apellido, uniqueness: {message: "No se puede Repetir"}
  validates :nombre_completo, uniqueness: {message: "No se puede Repetir"}
  validates :telefono, uniqueness: {message: "No se puede Repetir"}
  validates :direccion, uniqueness: {message: "No se puede Repetir"} 
  
  
end
