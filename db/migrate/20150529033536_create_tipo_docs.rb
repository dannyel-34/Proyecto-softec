class CreateTipoDocs < ActiveRecord::Migration
  def change
    create_table :tipo_docs do |t|
      t.string :nombre
      t.string :sigla

      t.timestamps
    end
  end
end
