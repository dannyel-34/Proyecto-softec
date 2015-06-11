class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.boolean :asiste
      t.datetime :fch
      t.references :curso, index: true
      t.references :profesor, index: true
      t.references :alumno, index: true

      t.timestamps
    end
  end
end
