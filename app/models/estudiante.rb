class Estudiante < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :municipio
  
 # Validar que los atributos sean obligatorios 
 validates :pr_nombre, :presence => true 
 validates :sr_nombre, :presence => true 
 validates :sr_apellido, :presence => true 
 validates :pr_apellido, :presence => true 
 
 # validar un atributo booleano 
 validates :genero, inclusion: [true, false]
 
 # validar que un atributos unicos 
 validates :num_doc, uniqueness: { message: "No se puede Repetir" } 
 validates :mail, uniqueness: { message: "No se puede Repetir" } 
 
 # validar formato de un email 
 validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,  message: 'Formato no valido' }

 
 # valida la longitud de un campo, tanto la longitud minima como la maxima 
 validates :num_doc, length: { minimum: 8, maximum: 12 } 
 validates :pr_nombre, length: { minimum: 45, maximum: 250 } 
 validates :sr_apellido, length: {minimun: 45, maximum: 250}
 validates :pr_apellido, length: {minumun: 45, maximum: 250}
 validates :sr_apellido, length: {minimum: 45, maximum: 250}

 # Valida si un atributo es numerico 
 validates :num_doc, numericality: true 


end
