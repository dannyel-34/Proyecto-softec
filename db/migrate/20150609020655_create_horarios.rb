class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.date :fch_ini
      t.date :fch_fin
      t.boolean :diasSemana
      t.references :profesor, index: true

      t.timestamps
    end
  end
end
