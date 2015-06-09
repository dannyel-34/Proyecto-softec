class Comentario < ActiveRecord::Base
    
    # Validar que los atributos sean obligatorios 
    validates :nombre, :presence => true 
    validates :mail, :presence => true 
    validates :asunto, :presence => true 
    validates :mensaje, :presence => true
 
 
end
