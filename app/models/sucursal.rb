class Sucursal < ActiveRecord::Base
  belongs_to :institucion
  
  #valida campos obligatorios
  validates :cod, :presence => true
  validates :sede, :presence => true
  validates :direccion, :presence => true
  validates :email, :presence => true
  
   # validar formato de un email 
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Formato no valido' }
  
  # valida la longitud de un campo, tanto la longitud minima como la maxima 
  validates :cod, length: { minimum: 5, maximum: 15 } 
  validates :direccion, length: { minimum: 5, maximum: 45 }
  validates :sede, length: { minimum: 5, maximum: 45 } 
  
  # Valida si un atributo es numerico 
  validates :cod, numericality: true
  
end
