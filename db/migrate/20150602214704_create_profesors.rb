class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :nombre_completo
      t.string :direccion
      t.string :telefono
      t.integer :doc_identidad
      t.references :tipo_doc, index: true
      t.references :estado_civils, index: true
      
      t.timestamps
    end
  end
end
