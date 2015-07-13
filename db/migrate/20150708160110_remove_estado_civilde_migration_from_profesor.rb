class RemoveEstadoCivildeMigrationFromProfesor < ActiveRecord::Migration
  def change
    remove_reference :profesors, :estado_civils, index: true
  end
end
