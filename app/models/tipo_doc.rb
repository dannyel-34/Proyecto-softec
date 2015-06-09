class TipoDoc < ActiveRecord::Base
   
   
   # Validar que los atributos sean obligatorios 
    validates :nombre, :presence => true 
    validates :sigla, :presence => true
    
    # valida la longitud de un campo, tanto la longitud minima como la maxima 
    validates :nombre, length: { minimum: 5, maximum: 45 } 
    validates :sigla, length: { minimum: 3, maximum: 3 }
    
   def self.search(search, page) where(['upper(nombre) like ?',
     "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre") 
   end
 
end
