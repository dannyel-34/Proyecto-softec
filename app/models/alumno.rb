class Alumno < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :tipo_doc
  belongs_to :estado_civil
  
  def self.search(search, page) 
    where(['upper(nombre) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre") 
  end
 
end
