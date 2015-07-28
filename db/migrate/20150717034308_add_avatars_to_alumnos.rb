class AddAvatarsToAlumnos < ActiveRecord::Migration
  def self.up
    change_table :alumnos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :alumnos, :avatar
  end
end
