class AddFchNacimientoToProfesors < ActiveRecord::Migration
  def change
    add_column :profesors, :fch_nacimiento, :date
  end
end
