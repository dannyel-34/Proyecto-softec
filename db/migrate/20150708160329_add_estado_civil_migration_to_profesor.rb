class AddEstadoCivilMigrationToProfesor < ActiveRecord::Migration
  def change
    add_reference :profesors, :estado_civil, index: true
  end
end
