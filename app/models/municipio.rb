class Municipio < ActiveRecord::Base
   
   
   # Validar que los atributos sean obligatorios 
    validates :nombre_departamento, :presence => true 
    validates :nombre_municipio, :presence => true 
    validates :nombre_centro_poblado, :presence => true 
    validates :nombre, :presence => true
    
   def self.search(search, page) where(['upper(nombre) like ?', "%#{search}%".upcase]).paginate(page: page, per_page: 10).order("nombre") 
   end
 
end
