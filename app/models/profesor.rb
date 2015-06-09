class Profesor < ActiveRecord::Base
  belongs_to :tipo_doc
  belongs_to :estado_civils
end
