class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :ficha
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :nombre_completo
      t.string :tel
      t.string :direccion
      t.references :municipio, index: true
      t.string :celular
      t.string :doc
      t.references :tipo_doc, index: true
      t.date :fch_nacimiento
      t.references :estado_civil, index: true

      t.timestamps
    end
  end
end
