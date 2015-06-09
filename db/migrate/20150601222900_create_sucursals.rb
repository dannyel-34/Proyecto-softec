class CreateSucursals < ActiveRecord::Migration
  def change
    create_table :sucursals do |t|
      t.string :cod
      t.string :sede
      t.string :direccion
      t.string :email
      t.references :institucion, index: true

      t.timestamps
    end
  end
end
