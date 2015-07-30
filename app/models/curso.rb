class Curso < ActiveRecord::Base
    has_many :grupos
    
    validates :nombre, :presence => true
    validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
   
    # valida la longitud de un campo, tanto la longitud minima como la maxima 
    validates :descripcion, length: { minimum: 5, maximum: 100 } 
    validates :nombre, length: { minimum: 5, maximum: 50 }
    
    #validar atributos unicos
    validates :descripcion, uniqueness: { message: "No se puede Repetir" } 
    validates :nombre, uniqueness: { message: "No se puede Repetir" }
    
    
    
  
end
