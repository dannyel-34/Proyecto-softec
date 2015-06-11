class AddGeneroToAlumno < ActiveRecord::Migration
  def change
    add_column :alumnos, :genero, :boolean
  end
end
