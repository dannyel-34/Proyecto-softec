class CreateInstitucions < ActiveRecord::Migration
  def change
    create_table :institucions do |t|
      t.integer :cod
      t.string :nombre
      t.string :email
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
