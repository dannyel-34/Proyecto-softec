class Institucion < ActiveRecord::Base
  
    has_many :sucursals
    
    def self.search(search, page)
      where(['upper(nombre) like ?',
      "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
    end
    
    validates :nombre, :presence => true
    validates :cod, :presence => true
    validates :direccion, :presence => true
    validates :telefono, :presence => true
    
    # validar formato de un email 
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Formato no valido' }
    
    # Valida si un atributo es numerico 
    validates :cod, numericality: true
  
  
end
