class Alumno < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :tipo_doc
  belongs_to :estado_civil
  

  # Validar que los atributos sean obligatorios 
  validates :nombre, :presence => true 
  validates :primer_apellido, :presence => true 
  validates :segundo_apellido, :presence => true 
  validates :nombre_completo, :presence => true 
  validates :email, :presence => true 
  validates :tel, :presence => true 
  validates :direccion, :presence => true 
  validates :celular, :presence => true 
  validates :doc, :presence => true 


  # validar un atributo booleano 
  validates :genero, inclusion: [true, false] 

  # validar que un atributos unicos 
  validates :doc, uniqueness: { message: "No se puede Repetir" } 
  validates :email, uniqueness: { message: "No se puede Repetir" } 
  validates :nombre_completo, uniqueness: { message: "No se puede Repetir" } 
  validates :nombre, uniqueness: { message: "No se puede Repetir" } 
  validates :primer_apellido, uniqueness: { message: "No se puede Repetir" } 
  validates :segundo_apellido, uniqueness: { message: "No se puede Repetir" } 
  validates :tel, uniqueness: { message: "No se puede Repetir" } 
  validates :direccion, uniqueness: { message: "No se puede Repetir" } 
  validates :celular, uniqueness: { message: "No se puede Repetir" } 

  # validar formato de un email 
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Formato no valido' }
  
  # valida la longitud de un campo, tanto la longitud minima como la maxima 
  validates :doc, length: { minimum: 5, maximum: 12 } 
  validates :nombre, length: { minimum: 5, maximum: 45 } 
  validates :nombre_completo, length: { minimum: 5, maximum: 95 } 
  validates :primer_apellido, length: { minimum: 5, maximum: 95 } 
  validates :segundo_apellido, length: { minimum: 5, maximum: 95 } 
  validates :tel, length: { minimum: 5, maximum: 8 } 
  validates :celular, length: { minimum: 5, maximum: 13 } 

  # Valida si un atributo es numerico 
  validates :doc, numericality: true
  validates :tel, numericality: true
  validates :celular, numericality: true
  
  def self.search(search, page) 
    where(['upper(nombre) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre") 
  end
  
  #mwetodos autocomplete
  def municipio_nombre
      municipio.nombre if municipio
  end

  def municipio_nombre=(nombre)
      self.municipio = Municipio.find_by_nombre(nombre)
  end 
  
 has_attached_file :avatar, styles: { medium: '200x200>', thumb: '48x48>' }
  
 
end
