class Acudiente < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :estado_civil
  belongs_to :municipio
  
  #mwetodos autocomplete
  def municipio_nombre
      municipio.nombre if municipio
  end

  def municipio_nombre=(nombre)
      self.municipio = Municipio.find_by_nombre(nombre)
  end
  
end
