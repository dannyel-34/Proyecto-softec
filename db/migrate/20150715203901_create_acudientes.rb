class CreateAcudientes < ActiveRecord::Migration
  def change
    create_table :acudientes do |t|
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :nombre_completo
      t.string :mail
      t.string :telefono
      t.string :documento
      t.references :tipo_doc, index: true
      t.references :estado_civil, index: true
      t.date :fch
      t.string :direccion
      t.references :municipio, index: true

      t.timestamps
    end
  end
end
