class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nombre
      t.string :cod
      t.date :fch_ini
      t.date :fch_fin
      t.string :lugar
      t.string :notas
      t.integer :maximo_alumnos
      t.integer :numero_alumnos
      t.string :horario
      t.references :curso, index: true

      t.timestamps
    end
  end
end
