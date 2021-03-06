class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.references :alumno, index: true
      t.references :curso, index: true
      t.references :grupo, index: true
      t.references :horario, index: true
      t.references :institucion, index: true
      t.references :sucursal, index: true
      t.references :profesor, index: true
      t.references :assistance, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
