class Comentario < ActiveRecord::Base
    
    # Validar que los atributos sean obligatorios 
    validates :nombre, :presence => true 
    validates :mail, :presence => true 
    validates :asunto, :presence => true 
    validates :mensaje, :presence => true
    
    #validar atributos unicos
    validates :nombre, uniqueness: { message: "No se puede Repetir" } 
    validates :mail, uniqueness: { message: "No se puede Repetir" } 
    validates :asunto, uniqueness: { message: "No se puede Repetir" } 
    validates :mensaje, uniqueness: { message: "No se puede Repetir" } 
    
    # validar formato de un email 
    validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,  message: 'Formato no valido' }
    
    # valida la longitud de un campo, tanto la longitud minima como la maxima 
    validates :nombre, length: { minimum: 5, maximum: 50 } 
    validates :asunto, length: { minimum: 5, maximum: 50 }
    validates :mensaje, length: { minimum: 2, maximum: 4000 }
 
 
end
