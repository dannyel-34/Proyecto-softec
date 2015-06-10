class EstadoCivil < ActiveRecord::Base
    
    # Validar que los atributos sean obligatorios 
    validates :nombre, :presence => true 

    #metodo que sirve de busqueda por nombre
    def self.search(search, page) 
        where(['upper(nombre) like ?',"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre") #con esta linea definimos que el nombre a buscar se haga o realize
    end
    
    #validar cambos obligatorios
    validates :nombre, :presence => true

 
end
