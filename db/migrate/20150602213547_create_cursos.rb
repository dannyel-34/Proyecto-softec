class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fch_ini
      t.date :fch_fin

      t.timestamps
    end
  end
end
