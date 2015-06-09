class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :pr_nombre
      t.string :sr_nombre
      t.string :pr_apellido
      t.string :sr_apellido
      t.string :mail
      t.references :tipo_doc, index: true
      t.integer :num_doc
      t.references :municipio, index: true
      t.boolean :genero
      t.date :fch_nacimiento
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
