class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.string :mail
      t.string :asunto
      t.text :mensaje

      t.timestamps
    end
  end
end
