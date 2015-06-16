class AddImageToAlumno < ActiveRecord::Migration
  def change
    add_column :alumnos, :image, :string
  end
end
