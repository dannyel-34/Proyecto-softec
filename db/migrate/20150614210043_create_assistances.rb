class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.references :alumno, index: true
      t.references :profesor, index: true
      t.references :curso, index: true
      t.references :grupo, index: true
      t.references :horario, index: true
      t.date :fch

      t.timestamps
    end
  end
end
